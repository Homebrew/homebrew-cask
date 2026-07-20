cask "font-noto-serif-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notoserifdisplay"
  name "Noto Serif Display"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Display"

  font "NotoSerifDisplay-Italic[wdth,wght].ttf"
  font "NotoSerifDisplay[wdth,wght].ttf"

  # No zap stanza required
end
