cask "font-estonia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/estonia/Estonia-Regular.ttf"
  name "Estonia"
  homepage "https://fonts.google.com/specimen/Estonia"

  font "Estonia-Regular.ttf"

  zap :not_required
end
