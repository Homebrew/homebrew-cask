cask "airy" do
  version "3.29.2"
  sha256 :no_check

  url "https://cdn.airy-youtube-downloader.com/products/airy/mac/download/airy.dmg"
  name "Airy"
  desc "YouTube video and MP3 downloader"
  homepage "https://www.airy-youtube-downloader.com/mac/"

  livecheck do
    url "https://cdn.airy-youtube-downloader.com/products/airy/mac/update/airy.xml"
    strategy :sparkle, &:short_version
  end

  app "Airy.app"

  uninstall quit: "com.eltima.Airy"

  zap trash: "~/Library/Preferences/com.eltima.Airy.plist"
end
