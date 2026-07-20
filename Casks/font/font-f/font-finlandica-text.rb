cask "font-finlandica-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/finlandicatext"
  name "Finlandica Text"
  homepage "https://fonts.google.com/specimen/Finlandica+Text"

  font "FinlandicaText-Italic[wght].ttf"
  font "FinlandicaText[wght].ttf"

  # No zap stanza required
end
