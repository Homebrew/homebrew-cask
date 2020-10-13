cask "airy" do
  version "3.19,305"
  sha256 "bcf67240d7fdc0858e3c02375bf7661472a88a0de097b3d9e0c290a953ca675d"

  url "https://cdn.eltima.com/download/airy.dmg"
  appcast "https://cdn.eltima.com/download/airy-update/airy.xml"
  name "Airy"
  desc "YouTube video and MP3 downloader"
  homepage "https://mac.eltima.com/youtube-downloader-mac.html"

  app "Airy.app"

  uninstall quit: "com.eltima.Airy"

  zap trash: "~/Library/Preferences/com.eltima.Airy.plist"
end
