cask "font-syne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/syne/Syne%5Bwght%5D.ttf"
  name "Syne"
  homepage "https://fonts.google.com/specimen/Syne"

  font "Syne[wght].ttf"

  zap :not_required
end
