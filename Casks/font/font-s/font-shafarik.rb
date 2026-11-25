cask "font-shafarik" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/shafarik/Shafarik-Regular.ttf"
  name "Shafarik"
  homepage "https://fonts.google.com/specimen/Shafarik"

  font "Shafarik-Regular.ttf"

  zap :not_required
end
