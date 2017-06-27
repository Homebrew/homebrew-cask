cask 'dockstation' do
  version '1.2.1'
  sha256 '95a1c7f7f554ab6ece946e965a48a4afecbf3bade7689bced3c63be33ebc034e'

  # github.com/DockStation/dockstation was verified as official when first introduced to the cask
  url "https://github.com/DockStation/dockstation/releases/download/v#{version}/dockstation-#{version}.dmg"
  appcast 'https://github.com/DockStation/dockstation/releases.atom',
          checkpoint: '04a77c5ff85c177c98cdcc9fbc1b95931e158c27bb20f0d3a2a17ea8694e9ab9'
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
