cask "font-anaheim" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anaheim/Anaheim%5Bwght%5D.ttf"
  name "Anaheim"
  homepage "https://fonts.google.com/specimen/Anaheim"

  font "Anaheim[wght].ttf"

  zap :not_required
end
