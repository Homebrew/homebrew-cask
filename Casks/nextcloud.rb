cask 'nextcloud' do
  version '2.5.2.20190319'
  sha256 '42a912766160edf4d0900ebc648f3304656e7eb57a2036de4756113a99ccb2cc'

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://github.com/nextcloud/desktop/releases.atom'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
