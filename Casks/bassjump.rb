cask 'bassjump' do
  if MacOS.version <= :mountain_lion
    if MacOS.version == :snow_leopard
      version '2.0.3-249-SL'
      sha256 '390c0fa3828e8a74e3d0622b3637c9f4f57f9bee591719d02a173548d85b4a77'
    else
      version '2.0.3-249-ML'
      sha256 '8e4dffa6bb3b532b994f379d19d70903f59fc019916f10cba9d01b8075d69a7f'
    end

    # ffe82a399885f9f28605-66638985576304cbe11c530b9b932f18.r24.cf2.rackcdn.com was verified as official when first introduced to the cask
    url "http://ffe82a399885f9f28605-66638985576304cbe11c530b9b932f18.r24.cf2.rackcdn.com/BassJumpSoundSystem-#{version}.mpkg.zip"

    pkg "BassJump Sound System-#{version}.mpkg"
  else
    if MacOS.version == :mavericks
      version '2.5.1'
      sha256 '14408480cded51f6334753639e973ebbf2fc40f34ff64e1c35d2f32507d88afd'
    elsif MacOS.version == :yosemite
      version '3.0.0'
      sha256 '0f5507d69a3cd6247fda0977235db789c90d3e9f9de835dfe69c0ebf330b993d'
    else
      version '3.0.1'
      sha256 '9aa2020f996dba7f66cfda20615e3a0fded4c974a32ae5cf6bb6626c9d06e541'
    end

    # ffe82a399885f9f28605-66638985576304cbe11c530b9b932f18.r24.cf2.rackcdn.com was verified as official when first introduced to the cask
    url "http://ffe82a399885f9f28605-66638985576304cbe11c530b9b932f18.r24.cf2.rackcdn.com/BassJumpInstaller_#{version}.dmg.zip"

    pkg 'BassJumpInstaller.pkg'
  end

  name 'BassJump'
  homepage 'https://www.twelvesouth.com/product/bassjump-2-for-macbook'

  uninstall pkgutil:    [
                          'com.twelvesouth.bassjump.installer.halplugin',
                          'com.twelvesouth.bassjump.installer.overridekext',
                          'com.twelvesouth.bassjump.installer.prefpane',
                        ],
            kext:       'com.twelvesouth.driver.BassJumpOverrideDriver',
            login_item: 'BassJumpMenuExtra',
            quit:       'com.twelvesouth.BassJumpMenuExtra'

  caveats do
    reboot
  end
end
