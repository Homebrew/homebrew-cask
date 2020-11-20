cask "exifrenamer" do
  version "2.4.0"
  sha256 "b49a84bb74c02065561d55a38002d4db62495dcbead41ac4b528e5ead12ece2c"

  url "https://www.qdev.de/downloads/files/ExifRenamer.dmg"
  appcast "https://www.qdev.de/versions/ExifRenamer.txt"
  name "ExifRenamer"
  desc "Tool to rename digital photos, movie- and audio-clips"
  homepage "https://www.qdev.de/?location=mac/exifrenamer&forcelang=en"

  app "ExifRenamer.app"

  zap trash: "~/Library/Preferences/de.qdev.ExifRenamer.plist"
end
