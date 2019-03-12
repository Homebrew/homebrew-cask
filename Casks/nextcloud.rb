cask 'nextcloud' do
  version '2.5.1.20181204'
  sha256 '503bbb2ff5a0aae78f272e694b03b2e9829c3c615baacd3bf024d5987bcda8f9'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://github.com/nextcloud/desktop/releases.atom'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
