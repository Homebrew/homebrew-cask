cask "exifrenamer" do
  version "2.4.0,15"
  sha256 :no_check

  url "https://www.qdev.de/downloads/files/ExifRenamer.dmg"
  name "ExifRenamer"
  desc "Tool to rename digital photos, movie- and audio-clips"
  homepage "https://www.qdev.de/?location=mac/exifrenamer&forcelang=en"

  livecheck do
    url "https://www.qdev.de/versions/ExifRenamer.txt"
    strategy :page_match do |page|
      version = page.split
      "#{version[0]},#{version[1].tr("()", "")}"
    end
  end

  depends_on macos: ">= :el_capitan"

  app "ExifRenamer.app"

  zap trash: "~/Library/Preferences/de.qdev.ExifRenamer.plist"
end
