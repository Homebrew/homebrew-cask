cask "font-carlito" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/carlito"
  name "Carlito"
  homepage "https://fonts.google.com/specimen/Carlito"

  font "Carlito-Bold.ttf"
  font "Carlito-BoldItalic.ttf"
  font "Carlito-Italic.ttf"
  font "Carlito-Regular.ttf"

  # No zap stanza required
end
