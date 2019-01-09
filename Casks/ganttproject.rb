cask 'ganttproject' do
  version '2.8.9,r2335'
  sha256 '9991d419cf30d8c85ce828102f71e07885530b4a7fae3ad9e0c0ae764ea7f237'

  # github.com/bardsoftware/ganttproject was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bardsoftware/ganttproject/releases.atom'
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz/'

  app 'GanttProject.app'
end
