cask :v1 => 'syncthing-bar' do
  version '0.0.9'
  sha256 '61277e5f1efd70a98a2e574e1f1a8b40ec88c84086cb362a98f951ab05657cb9'

  url "https://github.com/m0ppers/syncthing-bar/releases/download/#{version}/syncthing-bar-#{version}.pkg"
  appcast 'https://github.com/m0ppers/syncthing-bar/releases.atom'
  name 'Syncthing bar'
  homepage 'https://github.com/m0ppers/syncthing-bar'
  license :oss

  pkg "syncthing-bar-#{version}.pkg"

  uninstall :quit      => 'koeln.mop.syncthing-bar',
            :pkgutil   => 'koeln.mop.syncthing-bar',
            :launchctl => 'koeln.mop.syncthing-bar.agent',
            :delete    => '/Applications/syncthing-bar.app'

  zap :delete => [
                  '~/Library/Application Support/Syncthing',
                  '~/Library/Caches/koeln.mop.syncthing-bar',
                  '~/Library/Saved Application State/koeln.mop.syncthing-bar.savedState',
                  '/Library/LaunchAgents/koeln.mop.syncthing-bar.agent.plist'
                 ]
end
