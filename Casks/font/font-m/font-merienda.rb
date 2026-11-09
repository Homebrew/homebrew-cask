cask "font-merienda" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/merienda/Merienda%5Bwght%5D.ttf"
  name "Merienda"
  homepage "https://fonts.google.com/specimen/Merienda"

  font "Merienda[wght].ttf"

  zap :not_required
end
