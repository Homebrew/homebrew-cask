cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '4.1.8'
  sha256 'fd19cc9d38fedef863693789d6501f419fb3f34eb4214ff62018055f3813a1d2'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '63ff4e4da47cd42393b7f181c7498f8062b8fd8213a1ffcd721472ea0713be0a'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
