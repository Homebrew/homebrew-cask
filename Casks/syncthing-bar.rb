cask :v1 => 'syncthing-bar' do
  version '0.0.7'
  sha256 '00e539d12365404258d2ae0f2cbd938d790323f9010c7f1269e37b12613f43b6'

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
