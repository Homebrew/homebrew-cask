cask "font-lexica-ultralegible" do
  version "1.0.0"
  sha256 "b9081bf92966461a1d6ac7db1d02c0c3133c73ddc233d38af854f59f50566e86"

  url "https://github.com/jacobxperez/lexica-ultralegible/archive/refs/tags/v#{version}.tar.gz"
  name "Lexica Ultralegible"
  homepage "https://jacobxperez.github.io/lexica-ultralegible/"

  rename "lexica-ultralegible-*/fonts/otf", "otf"
  rename "lexica-ultralegible-*/fonts/ttf", "ttf"

  font "otf/LexicaUltralegible-Bold.otf"
  font "otf/LexicaUltralegible-BoldItalic.otf"
  font "otf/LexicaUltralegible-Italic.otf"
  font "otf/LexicaUltralegible-Regular.otf"
  font "ttf/LexicaUltralegible-Bold.ttf"
  font "ttf/LexicaUltralegible-BoldItalic.ttf"
  font "ttf/LexicaUltralegible-Italic.ttf"
  font "ttf/LexicaUltralegible-Regular.ttf"

  # No zap stanza required
end
