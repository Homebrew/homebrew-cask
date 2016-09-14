cask 'syncthing-bar' do
  version '0.0.12'
  sha256 'f19f17c09786234d74a34647a11d36c5cb6b830cda041d6783593ef9d71e4ca7'

  url "https://github.com/m0ppers/syncthing-bar/releases/download/#{version}/syncthing-bar-#{version}.pkg"
  appcast 'https://github.com/m0ppers/syncthing-bar/releases.atom',
          checkpoint: '522146417fa729c40fcef7099681f702d8a6588d4c711b3f1bf7e05082bfd58b'
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
