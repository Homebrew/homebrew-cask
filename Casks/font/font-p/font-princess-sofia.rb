cask "font-princess-sofia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/princesssofia/PrincessSofia-Regular.ttf"
  name "Princess Sofia"
  homepage "https://fonts.google.com/specimen/Princess+Sofia"

  font "PrincessSofia-Regular.ttf"

  zap :not_required
end
