cask "font-sriracha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sriracha/Sriracha-Regular.ttf"
  name "Sriracha"
  homepage "https://fonts.google.com/specimen/Sriracha"

  font "Sriracha-Regular.ttf"

  zap :not_required
end
