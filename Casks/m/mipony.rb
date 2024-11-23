cask "mipony" do
  version "1.12,0"
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

  zap trash: [
    "~/.config/Mipony",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.downloader.mipony.sfl*",
    "~/Library/Caches/com.downloader.Mipony",
    "~/Library/HTTPStorages/com.downloader.Mipony",
    "~/Library/HTTPStorages/com.downloader.Mipony.binarycookies",
    "~/Library/Preferences/com.downloader.Mipony.plist",
    "~/Library/Saved Application State/com.downloader.Mipony.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
