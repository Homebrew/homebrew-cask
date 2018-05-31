cask 'karabiner-elements' do
  if MacOS.version == :el_capitan
    version '11.6.0'
    sha256 'c1b06252ecc42cdd8051eb3d606050ee47b04532629293245ffdfa01bbc2430d'
  else
    version '12.1.0'
    sha256 '0e1fd76efcc2b7b8766b77c4ad5a58faefbb6b706d7669b097942d64ae4be62e'
  end

  url "https://pqrs.org/osx/karabiner/files/Karabiner-Elements-#{version}.dmg"
  appcast 'https://pqrs.org/osx/karabiner/files/karabiner-elements-appcast.xml',
          checkpoint: '9eefcef483b220d58623de8f457b7c313d50db953135f09e5e3aff5170d62837'
  name 'Karabiner Elements'
  homepage 'https://pqrs.org/osx/karabiner/'

  auto_updates true
  depends_on macos: '>= :el_capitan'

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
