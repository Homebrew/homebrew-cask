cask 'ganttproject' do
  version '2.8.5,r2179'
  sha256 '0f8a752c03e29196d38b1874239c4e8e048b3b8360c82d8da3262ec9e1160ad9'

  # github.com/bardsoftware/ganttproject/releases/download was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bardsoftware/ganttproject/releases.atom',
          checkpoint: '3bf25b7d2739eace46496219d2955bfcf420a00c9a315a9ff948267d40b7c9d9'
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz/'

  app 'GanttProject.app'
end
