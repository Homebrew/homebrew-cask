cask "font-arbutus" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/arbutus/Arbutus-Regular.ttf"
  name "Arbutus"
  homepage "https://fonts.google.com/specimen/Arbutus"

  font "Arbutus-Regular.ttf"

  zap :not_required
end
