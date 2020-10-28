cask "airy" do
  version "3.20,310"
  sha256 "a9642e5fe08a5af23932e1d3d7d446d86425c4c2db1edc7284d335f23b0b8e42"

  url "https://cdn.eltima.com/download/airy.dmg"
  appcast "https://cdn.eltima.com/download/airy-update/airy.xml"
  name "Airy"
  desc "YouTube video and MP3 downloader"
  homepage "https://mac.eltima.com/youtube-downloader-mac.html"

  app "Airy.app"

  uninstall quit: "com.eltima.Airy"

  zap trash: "~/Library/Preferences/com.eltima.Airy.plist"
end
