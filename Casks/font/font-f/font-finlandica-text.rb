cask "font-finlandica-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/finlandicatext"
  name "Finlandica Text"
  homepage "https://github.com/HelsinkiTypeStudio/FinlandicaText"

  font "FinlandicaText-Italic[wght].ttf"
  font "FinlandicaText[wght].ttf"

  # No zap stanza required
end
