cask "font-labrada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/labrada"
  name "Labrada"
  homepage "https://fonts.google.com/specimen/Labrada"

  font "Labrada-Italic[wght].ttf"
  font "Labrada[wght].ttf"

  # No zap stanza required
end
