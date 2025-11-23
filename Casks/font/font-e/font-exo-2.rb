cask "font-exo-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/exo2"
  name "Exo 2"
  homepage "https://fonts.google.com/specimen/Exo+2"

  font "Exo2-Italic[wght].ttf"
  font "Exo2[wght].ttf"

  # No zap stanza required
end
