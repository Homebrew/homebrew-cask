cask "airy" do
  version "3.18,301"
  sha256 "deb9e45c82e1ae17ea8f05034d79fd253679ca07eadac1863d2e1a4d892e8c8b"

  url "https://cdn.eltima.com/download/airy.dmg"
  appcast "https://cdn.eltima.com/download/airy-update/airy.xml"
  name "Airy"
  desc "YouTube video and MP3 downloader"
  homepage "https://mac.eltima.com/youtube-downloader-mac.html"

  app "Airy.app"

  uninstall quit: "com.eltima.Airy"

  zap trash: "~/Library/Preferences/com.eltima.Airy.plist"
end
