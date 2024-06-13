cask "font-platypi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/platypi"
  name "Platypi"
  homepage "https://fonts.google.com/specimen/Platypi"

  font "Platypi-Italic[wght].ttf"
  font "Platypi[wght].ttf"

  # No zap stanza required
end
