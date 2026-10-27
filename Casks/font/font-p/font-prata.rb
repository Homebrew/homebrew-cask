cask "font-prata" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/prata/Prata-Regular.ttf"
  name "Prata"
  homepage "https://fonts.google.com/specimen/Prata"

  font "Prata-Regular.ttf"

  zap :not_required
end
