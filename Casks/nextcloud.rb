cask 'nextcloud' do
  version '2.3.3.84'
  sha256 '87c551d015a4e64bffe39f775b8ba46a3b9a424988e03ae8a5d753de2b4a7a8e'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://github.com/nextcloud/client_theming/releases.atom'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
