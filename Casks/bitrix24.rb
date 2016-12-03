cask 'bitrix24' do
  version :latest
  sha256 :no_check

  url 'http://dl.bitrix24.com/b24/bitrix24_desktop.dmg'
  name 'Bitrix24'
  homepage 'https://www.bitrix24.com/apps/mobile-and-desktop-apps.php#desktop_app'

  app 'Bitrix24.app'
end
