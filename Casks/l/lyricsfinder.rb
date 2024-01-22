cask "lyricsfinder" do
  version "1.5.6"
  sha256 :no_check

  url "https://www.mediahuman.com/download/LyricsFinder.dmg"
  name "LyricsFinder"
  desc "Free software application that can help you find and add missing lyrics"
  homepage "https://www.mediahuman.com/lyrics-finder"

  livecheck do
    url :homepage
    regex(/"softwareVersion">(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :el_capitan"

  app "LyricsFinder.app"

  zap trash: ""
end
