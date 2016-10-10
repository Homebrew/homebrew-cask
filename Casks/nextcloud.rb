cask 'nextcloud' do
  version '2.2.4.1'
  sha256 'b466cd8ec6c7d105e51019f49c31a1009068ae7fade787d7e7cab0ee469ae6ed'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  name 'Nextcloud'
  homepage 'https://nextcloud.com'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
