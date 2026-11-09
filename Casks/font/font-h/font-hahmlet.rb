cask "font-hahmlet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/hahmlet/Hahmlet%5Bwght%5D.ttf"
  name "Hahmlet"
  homepage "https://fonts.google.com/specimen/Hahmlet"

  font "Hahmlet[wght].ttf"

  zap :not_required
end
