cask "mipony" do
  version :latest
  sha256 :no_check

  url "https://download.mipony.net/downloads/mac/Mipony-Installer.pkg"
  name "Mipony"
  homepage "https://www.mipony.net/en/"

  pkg "Mipony-Installer.pkg"

  uninstall pkgutil: "net.installer.mipony.*",
            quit:    "com.downloader.Mipony"
end
