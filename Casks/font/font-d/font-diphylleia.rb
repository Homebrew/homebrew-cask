cask "font-diphylleia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/diphylleia/Diphylleia-Regular.ttf"
  name "Diphylleia"
  homepage "https://fonts.google.com/specimen/Diphylleia"

  font "Diphylleia-Regular.ttf"

  zap :not_required
end
