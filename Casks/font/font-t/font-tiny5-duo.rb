cask "font-tiny5-duo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/tiny5duo"
  name "Tiny5 Duo"
  homepage "https://github.com/Gissio/font_tiny5"

  font "Tiny5Duo-Italic[BLED,JITT,ROND,wdth,wght].ttf"
  font "Tiny5Duo[BLED,JITT,ROND,wdth,wght].ttf"

  # No zap stanza required
end
