cask "font-anton" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anton/Anton-Regular.ttf"
  name "Anton"
  homepage "https://fonts.google.com/specimen/Anton"

  font "Anton-Regular.ttf"

  zap :not_required
end
