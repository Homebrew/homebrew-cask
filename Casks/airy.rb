cask "airy" do
  version "3.27"
  sha256 :no_check

  url "https://cdn.eltima.com/download/airy.dmg"
  name "Airy"
  desc "YouTube video and MP3 downloader"
  homepage "https://mac.eltima.com/youtube-downloader-mac.html"

  livecheck do
    url "https://cdn.airy-youtube-downloader.com/products/airy/mac/update/airy.xml"
    strategy :sparkle do |item|
      item.short_version.sub(/\(.*/, "")
    end
  end

  app "Airy.app"

  uninstall quit: "com.eltima.Airy"

  zap trash: "~/Library/Preferences/com.eltima.Airy.plist"
end
