cask :v1 => 'bassjump' do

  if MacOS.version < :mavericks
    version '2.0.3'
    sha256 '8e4dffa6bb3b532b994f379d19d70903f59fc019916f10cba9d01b8075d69a7f'

    url "http://ffe82a399885f9f28605-66638985576304cbe11c530b9b932f18.r24.cf2.rackcdn.com/BassJumpSoundSystem-#{version}-249-ML.mpkg.zip"

    pkg "BassJump Sound System-#{version}-249-ML.mpkg"
  else
    version '2.5.1'
    sha256 '14408480cded51f6334753639e973ebbf2fc40f34ff64e1c35d2f32507d88afd'

    url "http://ffe82a399885f9f28605-66638985576304cbe11c530b9b932f18.r24.cf2.rackcdn.com/BassJumpInstaller_#{version}.dmg.zip"

    container :nested => "BassJumpInstaller_#{version}.dmg"
    pkg 'BassJumpInstaller.pkg'
  end

  homepage 'http://www.twelvesouth.com/product/bassjump-2-for-macbook'
  license :gratis

  uninstall :pkgutil => [
                         'com.twelvesouth.bassjump.installer.halplugin',
                         'com.twelvesouth.bassjump.installer.overridekext',
                         'com.twelvesouth.bassjump.installer.prefpane',
                        ],
            :kext => 'com.twelvesouth.driver.BassJumpOverrideDriver'

  caveats do
    reboot
  end
end
