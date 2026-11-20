cask "font-agrave-pro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/agravepro/AgravePro%5Bwght%5D.ttf"
  name "Agrave Pro"
  homepage "https://fonts.google.com/specimen/Agrave+Pro"

  font "AgravePro[wght].ttf"

  zap :not_required
end
