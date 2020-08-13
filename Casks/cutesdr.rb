cask "cutesdr" do
  version "1.20"
  sha256 "b666dc37dc7b866a044cfbce811a986c37576841ee5cb95796f9b14b50a71db2"

  url "https://downloads.sourceforge.net/cutesdr/CuteSdr#{version.no_dots}.dmg"
  appcast "https://sourceforge.net/projects/cutesdr/rss"
  name "CuteSDR"
  homepage "https://sourceforge.net/projects/cutesdr/"

  app "cutesdr.app"
end
