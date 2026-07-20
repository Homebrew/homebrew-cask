cask "font-geomini" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/geomini/Geomini%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Geomini"
  homepage "https://fonts.google.com/specimen/Geomini"

  font "Geomini[wght].ttf"

  # No zap stanza required
end
