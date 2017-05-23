class AddVisibilityLevelToGroup < ActiveRecord::Migration
  def up
    add_column :groups, :visibility_level, :integer, default: 0
    # level 3 is "admin"
    execute 'UPDATE groups SET visibility_level = 3 WHERE NOT visible'
  end

  def down
    raise "this migration can not be reverted"
  end
end
