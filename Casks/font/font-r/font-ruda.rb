cask "font-ruda" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruda/Ruda%5Bwght%5D.ttf"
  name "Ruda"
  homepage "https://fonts.google.com/specimen/Ruda"

  font "Ruda[wght].ttf"

  zap :not_required
end
