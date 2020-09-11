cask "exifrenamer" do
  version "2.3.3"
  sha256 "f228163dbda67bea7745967688b3025c0bc6d31f1c77dd2d04909bf627e59e10"

  url "https://www.qdev.de/downloads/files/ExifRenamer.dmg"
  appcast "https://www.qdev.de/versions/ExifRenamer.txt"
  name "ExifRenamer"
  desc "Tool to rename digital photos, movie- and audio-clips"
  homepage "https://www.qdev.de/?location=mac/exifrenamer&forcelang=en"

  app "ExifRenamer.app"

  zap trash: "~/Library/Preferences/de.qdev.ExifRenamer.plist"
end
