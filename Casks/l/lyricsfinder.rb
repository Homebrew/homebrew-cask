cask "lyricsfinder" do
  version "1.5.6"
  sha256 :no_check

  url "https://www.mediahuman.com/download/LyricsFinder.dmg"
  name "Lyrics Finder"
  desc "Find and download song lyrics"
  homepage "https://www.mediahuman.com/lyrics-finder"

  livecheck do
    url :homepage
    regex(/"softwareVersion">(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :el_capitan"

  app "LyricsFinder.app"

  zap trash: "~/Library/Preferences/com.mediahuman.Lyrics Finder.plist"

  caveats do
    requires_rosetta
  end
end
