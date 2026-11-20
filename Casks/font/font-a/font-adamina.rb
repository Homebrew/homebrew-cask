cask "font-adamina" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/adamina/Adamina-Regular.ttf"
  name "Adamina"
  homepage "https://fonts.google.com/specimen/Adamina"

  font "Adamina-Regular.ttf"

  zap :not_required
end
