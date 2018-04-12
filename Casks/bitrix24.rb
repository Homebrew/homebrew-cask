cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '6.0.67.40'
  sha256 'f7b4dd62dcd77d8573e04af56d967e7affd8e71a847ef3d9a44b2d547c160e45'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '56235ec33594314026ed3b0dd560f5cf923faf8c3d1cdb1fce71783fa1a89e54'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
