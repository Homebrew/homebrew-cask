cask "nextcloud" do
  if MacOS.version <= :el_capitan
    version "2.6.5.20200710-legacy"
    sha256 "4c67e50361dd5596fb884002d1ed907fe109d607fba2cabe07e505addd164519"
  else
    version "3.0.0"
    sha256 "357112204fc663c7500c117c78b0bbd2b67d1b69c300acf139b46b1d67263df6"
  end

  url "https://download.nextcloud.com/desktop/releases/Mac/Installer/Nextcloud-#{version}.pkg"
  appcast "https://download.nextcloud.com/desktop/releases/Mac/Installer/"
  name "Nextcloud"
  homepage "https://nextcloud.com/"

  depends_on macos: ">= :yosemite"

  pkg "Nextcloud-#{version}.pkg"
  binary "#{appdir}/nextcloud.app/Contents/MacOS/nextcloudcmd"

  uninstall pkgutil: "com.nextcloud.desktopclient"
end
