cask "flixtools" do
  version "3.3.1.3.667"
  sha256 :no_check

  url "https://www.flixtools.com/download/FlixTools.dmg"
  name "OpenSubtitles FlixTools Lite"
  desc "Downloads subtitles for movies"
  homepage "https://www.flixtools.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "FlixTools.app"
end
