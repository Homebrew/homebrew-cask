class Bassjump < Cask
  if MacOS.version < :mavericks
    url 'http://ffe82a399885f9f28605-66638985576304cbe11c530b9b932f18.r24.cf2.rackcdn.com/BassJumpSoundSystem-2.0.3-249-ML.mpkg.zip'
    version '2.0.3'
    sha256 '8e4dffa6bb3b532b994f379d19d70903f59fc019916f10cba9d01b8075d69a7f'
    pkg 'BassJump Sound System-2.0.3-249-ML.mpkg'
  else
    url 'http://ffe82a399885f9f28605-66638985576304cbe11c530b9b932f18.r24.cf2.rackcdn.com/BassJumpInstaller_2.5.1.dmg.zip'
    version '2.5.1'
    sha256 '14408480cded51f6334753639e973ebbf2fc40f34ff64e1c35d2f32507d88afd'
    nested_container 'BassJumpInstaller_2.5.1.dmg'
    pkg 'BassJumpInstaller.pkg'
  end
  homepage 'http://www.twelvesouth.com/product/bassjump-2-for-macbook'
  caveats do
    reboot
  end
  uninstall :pkgutil => [
    'com.twelvesouth.bassjump.installer.halplugin',
    'com.twelvesouth.bassjump.installer.overridekext',
    'com.twelvesouth.bassjump.installer.prefpane',
  ],
  :kext => 'com.twelvesouth.driver.BassJumpOverrideDriver'
end
