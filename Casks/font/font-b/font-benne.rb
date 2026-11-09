cask "font-benne" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/benne/Benne-Regular.ttf"
  name "Benne"
  homepage "https://fonts.google.com/specimen/Benne"

  font "Benne-Regular.ttf"

  zap :not_required
end
