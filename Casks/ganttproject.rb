cask :v1 => 'ganttproject' do
  version '2.6.2-r1544'
  sha256 '8db9b2da23c581f4907ec091db07b7d19e784f4fcbc7fd7cea03d5ab0de23f70'

  url "https://ganttproject.googlecode.com/files/ganttproject-#{version}.dmg"
  homepage 'http://www.ganttproject.biz'
  license :oss

  app 'GanttProject 2.6.2.app'
end
