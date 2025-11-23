cask "font-stick-no-bills" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sticknobills/StickNoBills%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Stick No Bills"
  homepage "https://fonts.google.com/specimen/Stick+No+Bills"

  font "StickNoBills[wght].ttf"

  # No zap stanza required
end
