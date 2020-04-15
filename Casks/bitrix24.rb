cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '8.2.69.48'
  sha256 '6fbfa5c12a18e3b2eec15e765991d008f47a20026632b6eb6881bf555aaaf30c'

  url 'https://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
