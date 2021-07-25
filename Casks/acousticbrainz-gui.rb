cask "acousticbrainz-gui" do
  version "0.1"
  sha256 "eafba5110d0ca6b39119a0dae0cefc8f38d9e58c679145da5c1b903e193301c6"

  url "ftp://ftp.acousticbrainz.org/pub/acousticbrainz/acousticbrainz-gui-osx-#{version}.dmg"
  name "AcousticBrainz"
  desc "Graphical client to submit audio features to the AcousticBrainz database"
  homepage "https://acousticbrainz.org/"

  livecheck do
    url "https://acousticbrainz.org/download"
    regex(%r{href=.*?/acousticbrainz[._-]gui[._-]osx[._-](\d+(?:\.\d+)*)\.dmg}i)
  end

  app "acousticbrainz-gui.app"
end
