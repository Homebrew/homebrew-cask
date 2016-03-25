cask 'syncthing-bar' do
  version '0.0.10'
  sha256 'fb522b9c2ebacfa1ae7dc1e338e04d843961291f67008593ea82c079b58104fe'

  url "https://github.com/m0ppers/syncthing-bar/releases/download/#{version}/syncthing-bar-#{version}.pkg"
  appcast 'https://github.com/m0ppers/syncthing-bar/releases.atom',
          checkpoint: 'f5440bd5b221c7933c7baf6eea50618bfd5162b3eecb12ff62904fd22a11430c'
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
