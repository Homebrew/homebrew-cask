cask 'dockstation' do
  version '1.3.0'
  sha256 'cc22247295e0714a888b8d5dae1cc53c1f95cfcf8345c35a8c7c05b12afd0b5b'

  # github.com/DockStation/dockstation was verified as official when first introduced to the cask
  url "https://github.com/DockStation/dockstation/releases/download/v#{version}/dockstation-#{version}.dmg"
  appcast 'https://github.com/DockStation/dockstation/releases.atom',
          checkpoint: '78a34cbf5e41f237e83c3ac7edb7d5f17819bb12b2f118c5f9dd4ecede62587c'
  name 'DockStation'
  homepage 'https://dockstation.io/'

  depends_on macos: '>= :el_capitan'

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
