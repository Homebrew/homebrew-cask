cask 'karabiner-elements' do
  version '11.6.0'
  sha256 'c1b06252ecc42cdd8051eb3d606050ee47b04532629293245ffdfa01bbc2430d'

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: '90f290396b38c82fe24547572781fa4ed695cf79cd3fb95ca8139d0f893b3dc7'
  name 'Karabiner Elements'
  homepage 'https://pqrs.org/osx/karabiner/'

  auto_updates true

  pkg 'Karabiner-Elements.sparkle_guided.pkg'

  uninstall signal:  [
                       ['TERM', 'org.pqrs.Karabiner-Elements'],
                       ['TERM', 'karabiner_grabber'],
                       ['TERM', 'karabiner_console_user_server'],
                     ],
            pkgutil: 'org.pqrs.Karabiner-Elements',
            kext:    'org.pqrs.driver.Karabiner.VirtualHIDDevice.v050000',
            script:  {
                       executable: '/Library/Application Support/org.pqrs/Karabiner-Elements/uninstall_core.sh',
                       sudo:       true,
                     }

  zap trash: [
               '~/Library/Application Support/Karabiner-Elements',
               '~/.karabiner.d',
               '~/.config/karabiner',
               '~/Library/Preferences/org.pqrs.Karabiner-Elements-Updater.plist',
               '~/Library/Caches/org.pqrs.Karabiner-Elements-Updater',
             ]
end
