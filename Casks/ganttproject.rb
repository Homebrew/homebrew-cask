cask 'ganttproject' do
  version '2.8.7,r2262'
  sha256 'a622a81ad6ff47e17da7935ee9b63a3c1b9cb605332887b8dbf2e8c7f36556be'

  # github.com/bardsoftware/ganttproject/releases/download was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bardsoftware/ganttproject/releases.atom',
          checkpoint: '3538464ada05bf578f7f4e8adfb7dfcb5a20fdb3c1791d34dd219d40f5c7f000'
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz/'

  app 'GanttProject.app'
end
