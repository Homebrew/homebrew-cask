cask "font-acme" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/acme/Acme-Regular.ttf"
  name "Acme"
  homepage "https://fonts.google.com/specimen/Acme"

  font "Acme-Regular.ttf"

  zap :not_required
end
