cask 'syncthing-bar' do
  version '0.0.11'
  sha256 '1b918bd0bd08bddd93165782dbc1b98b049b8ee11671297c1f2dc05977ab438c'

  url "https://github.com/m0ppers/syncthing-bar/releases/download/#{version}/syncthing-bar-#{version}.pkg"
  appcast 'https://github.com/m0ppers/syncthing-bar/releases.atom',
          checkpoint: '85ff4420f74580ef04f71ce5900979d779a9de86d2b8218745f5324e8d9cd077'
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
