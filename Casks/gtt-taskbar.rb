cask 'gtt-taskbar' do
  version '0.3.6'
  sha256 'ef1c549bdf3f36a5d3e4ead4a2f3540cdb081990dd301d5394ac462580c6b22e'

  url "https://github.com/kriskbx/gitlab-time-tracker-taskbar/releases/download/v#{version}/gtt-taskbar-darwin-x64-#{version}.zip"
  appcast 'https://github.com/krisbx/gitlab-time-tracker-taskbar/releases.atom'
  name 'Gitlab time tracker taskbar'
  homepage 'https://github.com/kriskbx/gitlab-time-tracker-taskbar'

  app 'gtt-taskbar.app'
end
