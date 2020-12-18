cask "airy" do
  version "3.21,318"
  sha256 :no_check

  url "https://cdn.eltima.com/download/airy.dmg"
  appcast "https://cdn.eltima.com/download/airy-update/airy.xml"
  name "Airy"
  desc "YouTube video and MP3 downloader"
  homepage "https://mac.eltima.com/youtube-downloader-mac.html"

  app "Airy.app"

  uninstall quit: "com.eltima.Airy"

  zap trash: "~/Library/Preferences/com.eltima.Airy.plist"
end
