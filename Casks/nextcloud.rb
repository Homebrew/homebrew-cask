cask 'nextcloud' do
  if MacOS.version <= :el_capitan
    version '2.6.4.20200303-legacy'
    sha256 '63118b878e36e9213297015798a3822d92fe36010690a0951ed1b2f255259368'
  else
    version '2.6.4.20200303'
    sha256 '989be2911e096b1f20132c0649f8a4a42f2c9d6111c6d46dfec7278f783721b6'
  end

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast 'https://download.nextcloud.com/desktop/releases/Mac/Installer/'
  name 'Nextcloud'
  homepage 'https://nextcloud.com/'

  depends_on macos: '>= :yosemite'

  pkg "Nextcloud-#{version}.pkg"
  binary "#{appdir}/nextcloud.app/Contents/MacOS/nextcloudcmd"

  uninstall pkgutil: 'com.nextcloud.desktopclient'
end
