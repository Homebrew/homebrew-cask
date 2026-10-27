cask "font-bahiana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bahiana/Bahiana-Regular.ttf"
  name "Bahiana"
  homepage "https://fonts.google.com/specimen/Bahiana"

  font "Bahiana-Regular.ttf"

  zap :not_required
end
