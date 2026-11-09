cask "font-special-elite" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/specialelite/SpecialElite-Regular.ttf"
  name "Special Elite"
  homepage "https://fonts.google.com/specimen/Special+Elite"

  font "SpecialElite-Regular.ttf"

  zap :not_required
end
