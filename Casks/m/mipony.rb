cask "mipony" do
  version "1.11,0"
  sha256 :no_check

  url "https://download.mipony.net/downloads/mac/Mipony-Installer.pkg"
  name "Mipony"
  desc "Download manager"
  homepage "https://www.mipony.net/en/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "Mipony-Installer.pkg"

  uninstall quit:    "com.downloader.Mipony",
            pkgutil: "net.installer.mipony.*"
end
