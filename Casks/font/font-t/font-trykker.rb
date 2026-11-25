cask "font-trykker" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/trykker/Trykker-Regular.ttf"
  name "Trykker"
  homepage "https://fonts.google.com/specimen/Trykker"

  font "Trykker-Regular.ttf"

  zap :not_required
end
