cask 'dockstation' do
  version '1.4.1'
  sha256 'e95606d7d780acb0b663c168348ddd1eeaf2810ea3d4a6639f81bc63bfe68606'

  # github.com/DockStation/dockstation was verified as official when first introduced to the cask
  url "https://github.com/DockStation/dockstation/releases/download/v#{version}/dockstation-#{version}.dmg"
  appcast 'https://github.com/DockStation/dockstation/releases.atom',
          checkpoint: '044b265074f1ea1639186a1c316d3a341c4cb9c1a0946ece115d8aeab0437226'
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
