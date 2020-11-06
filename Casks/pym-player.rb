cask "pym-player" do
  version "7.0.1,330"
  sha256 "b9a22a37661c0c00591454e5c429ef42b11c8601ac95ad7f50d0e0bb8a7e0f65"

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast "http://pym.uce.pl/pym-player/"
  name "PYM Player"
  homepage "http://pym.uce.pl/pym-player/"

  app "PYM Player.app"
end
