cask "font-playfair-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/playfairdisplay"
  name "Playfair Display"
  homepage "https://fonts.google.com/specimen/Playfair+Display"

  font "PlayfairDisplay-Italic[wght].ttf"
  font "PlayfairDisplay[wght].ttf"

  # No zap stanza required
end
