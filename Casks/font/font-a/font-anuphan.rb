cask "font-anuphan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anuphan/Anuphan%5Bwght%5D.ttf"
  name "Anuphan"
  homepage "https://fonts.google.com/specimen/Anuphan"

  font "Anuphan[wght].ttf"

  zap :not_required
end
