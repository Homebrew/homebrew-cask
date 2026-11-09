cask "font-dangrek" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dangrek/Dangrek-Regular.ttf"
  name "Dangrek"
  homepage "https://fonts.google.com/specimen/Dangrek"

  font "Dangrek-Regular.ttf"

  zap :not_required
end
