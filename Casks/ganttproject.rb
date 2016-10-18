cask 'ganttproject' do
  version '2.8.1-r2024'
  sha256 'af54b01733505e9fe1c112078cb5b93f2b7cf43e496fc5d7130a3a7bd00ab76f'

  url "https://dl.ganttproject.biz/ganttproject-#{version.sub(%r{-.*}, '')}/ganttproject-#{version}.dmg"
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz'

  app 'GanttProject.app'
end
