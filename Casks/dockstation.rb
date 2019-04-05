cask 'dockstation' do
  version '1.5.0'
  sha256 '3afc653f45e29495db7f9c60a2f533b3a1f715a538c4176d659df6e17486fe20'

  # github.com/DockStation/dockstation was verified as official when first introduced to the cask
  url "https://github.com/DockStation/dockstation/releases/download/v#{version}/dockstation-#{version}.dmg"
  appcast 'https://github.com/DockStation/dockstation/releases.atom'
  name 'DockStation'
  homepage 'https://dockstation.io/'

  depends_on macos: '>= :el_capitan'

  app 'DockStation.app'

  zap trash: [
               '~/Library/Application Support/dockstation',
               '~/Library/Preferences/org.dockstation.DockStation.helper.plist',
               '~/Library/Preferences/org.dockstation.DockStation.plist',
               '~/Library/Saved Application State/org.dockstation.DockStation.savedState',
             ]
end
