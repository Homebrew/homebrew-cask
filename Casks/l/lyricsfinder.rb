cask "lyricsfinder" do
  arch arm: "-arm"

  version "1.7"

  on_arm do
    sha256 "905eea7adb297b2e55716ba096144be52529de6fd7987c36fe36ec8625157722"
  end
  on_intel do
    sha256 "6e6e436de4c5d8ef1505b9afe4bf0aa8bd942caf847141c550878f8fe7276e05"
  end

  url "https://www.mediahuman.com/download/LyricsFinder#{arch}.dmg"
  name "Lyrics Finder"
  desc "Find and download song lyrics"
  homepage "https://www.mediahuman.com/lyrics-finder/"

  livecheck do
    url :homepage
    regex(/"softwareVersion">(\d+(?:\.\d+)+)</i)
  end

  depends_on :macos

  app "LyricsFinder.app"

  zap trash: "~/Library/Preferences/com.mediahuman.Lyrics Finder.plist"
end
