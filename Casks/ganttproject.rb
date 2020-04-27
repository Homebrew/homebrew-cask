cask 'ganttproject' do
  version '2.8.11,r2393'
  sha256 '08b11da6a4cf8d354b0ae4f6c1f1e38a7df7be4706f35699fcbcd527376378be'

  # github.com/bardsoftware/ganttproject/ was verified as official when first introduced to the cask
  url "https://github.com/bardsoftware/ganttproject/releases/download/ganttproject-#{version.before_comma}/ganttproject-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://github.com/bardsoftware/ganttproject/releases.atom'
  name 'GanttProject'
  homepage 'https://www.ganttproject.biz/'

  app 'GanttProject.app'
end
