cask :v1 => 'sonarr-menu' do
  version '3.1'
  sha256 'fb9e43972321b5e486adfec1bb4d58a377ddccf1b5e1fa651aa964e118ec1889'

  url "https://github.com/jefbarn/Sonarr-Menu/releases/download/v#{version}/Sonarr-Menu.v#{version}.zip"
  appcast 'https://github.com/jefbarn/Sonarr-Menu/releases.atom'
  name 'Sonarr Menu'
  homepage 'https://github.com/jefbarn/Sonarr-Menu'
  license :gpl

  app 'Sonarr-Menu.app'

  uninstall :quit => 'tv.sonarr.Sonarr-Menu',
            :launchctl => 'com.osx.sonarr.tv.job',
            :delete => '~/Library/LaunchAgents/SonarrAgent.plist'

  depends_on :cask => 'sonarr'
  depends_on :macos => '>= :mavericks'
end
