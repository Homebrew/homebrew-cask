cask "font-felipa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/felipa/Felipa-Regular.ttf"
  name "Felipa"
  homepage "https://fonts.google.com/specimen/Felipa"

  font "Felipa-Regular.ttf"

  zap :not_required
end
