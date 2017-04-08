cask 'bitrix24' do
  # note: "24" is not a version number, but an intrinsic part of the product name
  version '4.1.110.37'
  sha256 '2603689737b99e06601467a4f1754200e8c19a6dc2d488b0fb9fb64502c34768'

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  appcast 'https://www.bitrix24.com/osx_version.php',
          checkpoint: '71865756e2c4ddfd42c7713a4337154729b614b55cbe38347e65e7c6be181144'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
