cask 'nextcloud' do
  version '2.6.0.20190927'
  sha256 'd68f0bbf8b982bc568ebbb5d16603ca8aeecb7605d12f9066e0e6eb89f693090'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://download.nextcloud.com/desktop/releases/Mac/Installer/'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
