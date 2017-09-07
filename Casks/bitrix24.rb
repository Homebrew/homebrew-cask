cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '5.0.45.39'
  sha256 'd9115c615c09cba02f11db354d4745d8bf0866174fe0277d72549cf207a1ed14'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '816f9d0b91f74666c36cfda3b1ecd3c349007372c1902ce1819b2df6f3c1ca6e'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
