cask 'ganttproject' do
  version '2.7.2-r1954'
  sha256 'eeacb2011c4cf1a0ca255bff9f1ba5b4f213aba233bb9a830e1f46d7aa1ca5eb'

  url "https://dl.ganttproject.biz/ganttproject-#{version.sub(%r{-.*}, '')}/ganttproject-#{version}.dmg"
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz'
  license :oss

  app 'GanttProject.app'
end
