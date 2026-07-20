cask "font-quantico" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/quantico"
  name "Quantico"
  homepage "https://fonts.google.com/specimen/Quantico"

  font "Quantico-Bold.ttf"
  font "Quantico-BoldItalic.ttf"
  font "Quantico-Italic.ttf"
  font "Quantico-Regular.ttf"

  # No zap stanza required
end
