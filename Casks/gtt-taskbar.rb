cask 'gtt-taskbar' do
  version '0.3.7'
  sha256 '9eb190a607d6881fc131ef028aec620a1a4f0295bb4ad2902842513d7176dd1f'

  url "https://github.com/kriskbx/gitlab-time-tracker-taskbar/releases/download/v#{version}/gtt-taskbar-darwin-x64-#{version}.zip"
  appcast 'https://github.com/kriskbx/gitlab-time-tracker-taskbar/releases.atom'
  name 'gtt-taskbar'
  homepage 'https://github.com/kriskbx/gitlab-time-tracker-taskbar'

  app 'gtt-taskbar.app'
end
