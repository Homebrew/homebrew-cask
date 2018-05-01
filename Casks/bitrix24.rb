cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '6.0.77'
  sha256 'f5c79a12d35c7e2a028b97e531b4fbe33d58ff9ac88cab4a28c5d80fe7647fd3'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '8ec74b43f289b7efb48bd3030c6d23ba45565979fd13cde584fb60302628ebda'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
