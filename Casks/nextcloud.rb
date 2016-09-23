cask 'nextcloud' do
  version '2.2.3.4'
  sha256 '44f1c3d2b9ad3da50c122cbd2f97ab34421c5163e23edb560462ee69a92c166d'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  name 'Nextcloud'
  homepage 'https://nextcloud.com'
  license :gpl

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
