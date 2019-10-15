cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '8.1.0.44'
  sha256 '7149942929882b1a00c7b65e652249807e0dc03c4078416778c0fe665584a3e7'

  url 'https://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
