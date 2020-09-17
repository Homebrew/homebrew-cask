cask "flixtools" do
  version :latest
  sha256 :no_check

  url "https://www.flixtools.com/download/FlixTools.dmg"
  name "OpenSubtitles FlixTools Lite"
  desc "Downloads subtitles for movies"
  homepage "https://www.flixtools.com/"

  app "FlixTools.app"
end
