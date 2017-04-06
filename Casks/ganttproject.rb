cask 'ganttproject' do
  version '2.8.4,r2134'
  sha256 '1e42d88ac4122bdef7631aba589241ec431902859d7af18250891c486e5f242c'

  # github.com/bardsoftware/ganttproject/releases/download was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bardsoftware/ganttproject/releases.atom',
          checkpoint: '6cb5f272592593f3fe23cacc2c7bb18d0a5fbfab18a8c87ec98c92db69252711'
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz/'

  app 'GanttProject.app'
end
