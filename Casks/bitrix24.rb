cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '8.1.0.44'
  sha256 '4494265baf3a9927d929131274f7f75d1b05f9bb3c6f1a81ecb7882288a7ca7d'
  
  url "https://dl.bitrix24.com/b24/bitrix24_desktop_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.bitrix24.com/osx_version.php'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
