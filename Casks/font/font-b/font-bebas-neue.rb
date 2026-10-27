cask "font-bebas-neue" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bebasneue/BebasNeue-Regular.ttf"
  name "Bebas Neue"
  homepage "https://fonts.google.com/specimen/Bebas+Neue"

  font "BebasNeue-Regular.ttf"

  zap :not_required
end
