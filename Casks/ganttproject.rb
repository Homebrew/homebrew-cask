cask 'ganttproject' do
  version '2.7.1-r1924'
  sha256 '4a7775ae3547858ca5cce91b734bb429a7e04718433e925f60da89fc1d2d154b'

  url "https://dl.ganttproject.biz/ganttproject-#{version.sub(%r{-.*}, '')}/ganttproject-#{version}.dmg"
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz'
  license :oss

  app 'GanttProject.app'
end
