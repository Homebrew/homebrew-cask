cask "font-handjet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/handjet/Handjet%5BELGR%2CELSH%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Handjet"
  desc "Font tailored to work well with handjet printers"
  homepage "https://fonts.google.com/specimen/Handjet"

  font "Handjet[ELGR,ELSH,wght].ttf"

  # No zap stanza required
end
