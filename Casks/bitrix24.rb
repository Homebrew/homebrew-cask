cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '4.1.77'
  sha256 'ceb396b654adf6776f6f37da04d10c99b220522f58014990b3e5bd4b9b49896d'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '3755d407191526cf3c1c969381f6d508c88373f18819195828e578558c136612'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
