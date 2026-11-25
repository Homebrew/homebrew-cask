cask "font-varta" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/varta/Varta%5Bwght%5D.ttf"
  name "Varta"
  homepage "https://fonts.google.com/specimen/Varta"

  font "Varta[wght].ttf"

  zap :not_required
end
