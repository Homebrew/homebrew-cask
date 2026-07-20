cask "lyricsfinder" do
  arch arm: "-arm"

  version "1.7.2"
  sha256 :no_check

  url "https://www.mediahuman.com/download/LyricsFinder#{arch}.dmg"
  name "Lyrics Finder"
  desc "Find and download song lyrics"
  homepage "https://www.mediahuman.com/lyrics-finder/"

  livecheck do
    url :homepage
    regex(/"softwareVersion">(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: :monterey

  app "LyricsFinder.app"

  zap trash: "~/Library/Preferences/com.mediahuman.Lyrics Finder.plist"
end
