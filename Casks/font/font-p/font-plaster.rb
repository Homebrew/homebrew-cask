cask "font-plaster" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/plaster/Plaster-Regular.ttf"
  name "Plaster"
  homepage "https://fonts.google.com/specimen/Plaster"

  font "Plaster-Regular.ttf"

  zap :not_required
end
