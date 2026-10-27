cask "font-viga" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/viga/Viga-Regular.ttf"
  name "Viga"
  homepage "https://fonts.google.com/specimen/Viga"

  font "Viga-Regular.ttf"

  zap :not_required
end
