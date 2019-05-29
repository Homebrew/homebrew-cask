cask 'ganttproject' do
  version '2.8.10,r2363'
  sha256 '7dbe2f3fe6ece186d781111fe91f77950a271c87ef3a0a6345d65541281e908d'

  # github.com/bardsoftware/ganttproject was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bardsoftware/ganttproject/releases.atom'
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz/'

  app 'GanttProject.app'
end
