cask 'syncthing-bar' do
  version '0.0.11'
  sha256 'eb81af00838561cfd1cb3a1b01b28ae6131730d11031fe1863b5a4189a359a6e'

  url "https://github.com/m0ppers/syncthing-bar/releases/download/#{version}/syncthing-bar-#{version}.pkg"
  appcast 'https://github.com/m0ppers/syncthing-bar/releases.atom',
          checkpoint: '2409480b802299ae5ba438d16bc26a6d50beb2eda61622225f424ffe4fe95fca'
  name 'Syncthing bar'
  homepage 'https://github.com/m0ppers/syncthing-bar'
  license :oss

  pkg "syncthing-bar-#{version}.pkg"

  uninstall quit:      'koeln.mop.syncthing-bar',
            pkgutil:   'koeln.mop.syncthing-bar',
            launchctl: 'koeln.mop.syncthing-bar.agent',
            delete:    '/Applications/syncthing-bar.app'

  zap delete: [
                '~/Library/Application Support/Syncthing',
                '~/Library/Caches/koeln.mop.syncthing-bar',
                '~/Library/Saved Application State/koeln.mop.syncthing-bar.savedState',
                '/Library/LaunchAgents/koeln.mop.syncthing-bar.agent.plist',
              ]
end
