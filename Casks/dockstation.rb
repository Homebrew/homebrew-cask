cask 'dockstation' do
  version '1.2.0'
  sha256 '7ec7df116f1bb04dc047cde75132583b489cfbd3c96038166fd0903106e6dd25'

  # github.com/DockStation/dockstation was verified as official when first introduced to the cask
  url "https://github.com/DockStation/dockstation/releases/download/v#{version}/dockstation-#{version}.dmg"
  appcast 'https://github.com/DockStation/dockstation/releases.atom',
          checkpoint: '5a4d580832647d273819630c6ca8148ba43744f69ade04cb1ab405484d5beaab'
  name 'DockStation'
  homepage 'https://dockstation.io/'

  depends_on macos: '>= 10.11'

  app 'DockStation.app'

  zap delete: [
                '~/Library/Saved Application State/org.dockstation.DockStation.savedState',
              ],
      trash:  [
                '~/Library/Application Support/dockstation',
                '~/Library/Preferences/org.dockstation.DockStation.helper.plist',
                '~/Library/Preferences/org.dockstation.DockStation.plist',
              ]
end
