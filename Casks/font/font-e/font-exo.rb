cask "font-exo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/exo"
  name "Exo"
  homepage "https://fonts.google.com/specimen/Exo"

  font "Exo-Italic[wght].ttf"
  font "Exo[wght].ttf"

  # No zap stanza required
end
