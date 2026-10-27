cask "font-lexend" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lexend/Lexend%5Bwght%5D.ttf"
  name "Lexend"
  homepage "https://fonts.google.com/specimen/Lexend"

  font "Lexend[wght].ttf"

  zap :not_required
end
