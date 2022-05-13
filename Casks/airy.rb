cask "airy" do
  version "3.25,365"
  sha256 :no_check

  url "https://cdn.eltima.com/download/airy.dmg"
  name "Airy"
  desc "YouTube video and MP3 downloader"
  homepage "https://mac.eltima.com/youtube-downloader-mac.html"

  livecheck do
    url "https://cdn.eltima.com/download/airy-update/airy.xml"
    strategy :sparkle
  end

  app "Airy.app"

  uninstall quit: "com.eltima.Airy"

  zap trash: "~/Library/Preferences/com.eltima.Airy.plist"
end
