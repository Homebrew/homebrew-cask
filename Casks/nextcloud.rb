cask 'nextcloud' do
  if MacOS.version <= :el_capitan
    version '2.6.5.20200710-legacy'
    sha256 '4c67e50361dd5596fb884002d1ed907fe109d607fba2cabe07e505addd164519'
  else
    version '2.6.5.20200710'
    sha256 '6fce78bd01ee9e5a1b9521a45eda5d713b3a2681fd2f5b6d6a9326ff9b5b94fd'
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
