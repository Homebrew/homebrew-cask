cask 'nextcloud' do
  if MacOS.version <= :el_capitan
    version '2.6.2.20191224-legacy'
    sha256 '65a507096658b9128c122f117f6326fc96bb0397cfc9940daf4eb2d4b8b5997c'
  else
    version '2.6.2.20191224'
    sha256 'dc92a94370963d8ee74693a02b761fac8dd040e4c35c308c3df63eedcaf7ca1b'
  end

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://download.nextcloud.com/desktop/releases/Mac/Installer/'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  depends_on macos: '>= :yosemite'

  pkg "Nextcloud-#{version}.pkg"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
