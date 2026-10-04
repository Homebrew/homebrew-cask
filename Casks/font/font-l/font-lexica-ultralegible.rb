cask "font-lexica-ultralegible" do
  version "1.0.0"
  sha256 "b9081bf92966461a1d6ac7db1d02c0c3133c73ddc233d38af854f59f50566e86"

  url "https://github.com/jacobxperez/lexica-ultralegible/archive/refs/tags/v#{version}.tar.gz"
  name "Lexica Ultralegible"
  homepage "https://jacobxperez.github.io/lexica-ultralegible/"

  font "lexica-ultralegible-#{version}/fonts/otf/LexicaUltralegible-Bold.otf"
  font "lexica-ultralegible-#{version}/fonts/otf/LexicaUltralegible-BoldItalic.otf"
  font "lexica-ultralegible-#{version}/fonts/otf/LexicaUltralegible-Italic.otf"
  font "lexica-ultralegible-#{version}/fonts/otf/LexicaUltralegible-Regular.otf"
  font "lexica-ultralegible-#{version}/fonts/ttf/LexicaUltralegible-Bold.ttf"
  font "lexica-ultralegible-#{version}/fonts/ttf/LexicaUltralegible-BoldItalic.ttf"
  font "lexica-ultralegible-#{version}/fonts/ttf/LexicaUltralegible-Italic.ttf"
  font "lexica-ultralegible-#{version}/fonts/ttf/LexicaUltralegible-Regular.ttf"

  # No zap stanza required
end
