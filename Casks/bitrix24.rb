cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '6.0.35.40'
  sha256 '72a0b55a6e63757aba65c33e06f2308abe7bb342c355f30cc9cb509e3e8a16ce'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '04e0f05ae026934eb4307a82f030678d2f0f4679639b2725e13a2e4a4e41a71c'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
