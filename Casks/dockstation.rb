cask 'dockstation' do
  version '1.2.4'
  sha256 '86826de5da20f9eb6ecf0cc2ca1d14ef6d1964eef9e2a11c703cbf011064f081'

  # github.com/DockStation/dockstation was verified as official when first introduced to the cask
  url "https://github.com/DockStation/dockstation/releases/download/v#{version}/dockstation-#{version}.dmg"
  appcast 'https://github.com/DockStation/dockstation/releases.atom',
          checkpoint: '5e48f61d0e862dab3df692d9fb9023d8707e36018b52a6713fa9a7a1450e3b50'
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
