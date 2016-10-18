cask 'syncthing-bar' do
  version '0.0.12'
  sha256 'f19f17c09786234d74a34647a11d36c5cb6b830cda041d6783593ef9d71e4ca7'

  url "https://github.com/m0ppers/syncthing-bar/releases/download/#{version}/syncthing-bar-#{version}.pkg"
  appcast 'https://github.com/m0ppers/syncthing-bar/releases.atom',
          checkpoint: 'fbc5cd4a99b96d6e2b4a225fcafe621a1f94fbcde3bc479c36d42ace7cae60b6'
  name 'Syncthing bar'
  homepage 'https://github.com/m0ppers/syncthing-bar'

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
