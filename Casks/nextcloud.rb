cask 'nextcloud' do
  version '2.5.3.20190724'
  sha256 '39dbe0c667c0fa54124202e13b12d0541e46047cb7c1cc7ffc5aaf5b954c7cfb'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://download.nextcloud.com/desktop/releases/Mac/Installer/'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
