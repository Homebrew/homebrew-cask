cask 'nextcloud' do
  version '2.5.0.20181112'
  sha256 '5d416355da5ebff60015b5da0a5bceca17aad6640e82ce4308e6f847001cc48b'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://github.com/nextcloud/client_theming/releases.atom'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
