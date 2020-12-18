cask "pym-player" do
  version "7.1,7B49"
  sha256 "f78f110b2136a7bb107ca7a3a159d09fabbf8222f7dff1c12195f5f3a533726d"

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.after_comma}.dmg"
  appcast "http://pym.uce.pl/pym-player/"
  name "PYM Player"
  desc "Media player that automatically searches for subtitles"
  homepage "http://pym.uce.pl/pym-player/"

  app "PYM Player.app"
end
