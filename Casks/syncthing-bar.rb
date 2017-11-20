cask 'syncthing-bar' do
  version '0.0.12'
  sha256 'f19f17c09786234d74a34647a11d36c5cb6b830cda041d6783593ef9d71e4ca7'

  url "https://github.com/m0ppers/syncthing-bar/releases/download/#{version}/syncthing-bar-#{version}.pkg"
  appcast 'https://github.com/m0ppers/syncthing-bar/releases.atom',
          checkpoint: 'a9f84d194a0e681711edd3e68d406fdd4b6d632563d5b710f6227cd18cbec2da'
  name 'Syncthing bar'
  homepage 'https://github.com/m0ppers/syncthing-bar'

  pkg "syncthing-bar-#{version}.pkg"

  uninstall quit:      'koeln.mop.syncthing-bar',
            pkgutil:   'koeln.mop.syncthing-bar',
            launchctl: 'koeln.mop.syncthing-bar.agent'

  zap trash: [
               '~/Library/Application Support/Syncthing',
               '~/Library/Caches/koeln.mop.syncthing-bar',
               '~/Library/Saved Application State/koeln.mop.syncthing-bar.savedState',
               '/Library/LaunchAgents/koeln.mop.syncthing-bar.agent.plist',
             ]
end
