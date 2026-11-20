cask "font-pompiere" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pompiere/Pompiere-Regular.ttf"
  name "Pompiere"
  homepage "https://fonts.google.com/specimen/Pompiere"

  font "Pompiere-Regular.ttf"

  zap :not_required
end
