cask 'karabiner-elements' do
  if MacOS.version <= :el_capitan
    version '11.6.0'
    sha256 'c1b06252ecc42cdd8051eb3d606050ee47b04532629293245ffdfa01bbc2430d'
  else
    version '12.0.0'
    sha256 '605aa1309aa88a4d4f78d3522cf920518ac97cdac58efea23e8b76f8d84c1c28'
  end

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: '68423ac36a0466c083fb81ddc5501d7707d614dbcd9e6ea40720a07f4ad681e0'
  name 'Karabiner Elements'
  homepage 'https://pqrs.org/osx/karabiner/'

  auto_updates true
  depends_on macos: '>= :sierra'

  pkg 'Karabiner-Elements.sparkle_guided.pkg'

  uninstall signal:  [
                       ['TERM', 'org.pqrs.Karabiner-Elements'],
                       ['TERM', 'karabiner_grabber'],
                       ['TERM', 'karabiner_console_user_server'],
                     ],
            pkgutil: 'org.pqrs.Karabiner-Elements',
            script:  {
                       executable: '/Library/Application Support/org.pqrs/Karabiner-Elements/uninstall_core.sh',
                       sudo:       true,
                     }

  # kext: 'org.pqrs.driver.Karabiner.VirtualHIDDevice.v*': Should not be uninstalled by Cask

  zap trash: [
               '~/Library/Application Support/Karabiner-Elements',
               '~/.karabiner.d',
               '~/.config/karabiner',
               '~/Library/Preferences/org.pqrs.Karabiner-Elements-Updater.plist',
               '~/Library/Caches/org.pqrs.Karabiner-Elements-Updater',
             ]
end
