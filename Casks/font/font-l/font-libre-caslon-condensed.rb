cask "font-libre-caslon-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/librecasloncondensed"
  name "Libre Caslon Condensed"
  homepage "https://github.com/ertekinno/libre-caslon-condensed"

  font "LibreCaslonCondensed-Italic[wght].ttf"
  font "LibreCaslonCondensed[wght].ttf"

  # No zap stanza required
end
