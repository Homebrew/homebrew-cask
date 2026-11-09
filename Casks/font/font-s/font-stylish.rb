cask "font-stylish" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/stylish/Stylish-Regular.ttf"
  name "Stylish"
  homepage "https://fonts.google.com/specimen/Stylish"

  font "Stylish-Regular.ttf"

  zap :not_required
end
