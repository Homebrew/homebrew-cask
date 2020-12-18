cask "exifrenamer" do
  version "2.4.0,15"
  sha256 :no_check

  url "https://www.qdev.de/downloads/files/ExifRenamer.dmg"
  appcast "https://www.qdev.de/versions/ExifRenamer.txt"
  name "ExifRenamer"
  desc "Tool to rename digital photos, movie- and audio-clips"
  homepage "https://www.qdev.de/?location=mac/exifrenamer&forcelang=en"

  app "ExifRenamer.app"

  zap trash: "~/Library/Preferences/de.qdev.ExifRenamer.plist"
end
