cask "font-marcellus" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/marcellus/Marcellus-Regular.ttf"
  name "Marcellus"
  homepage "https://fonts.google.com/specimen/Marcellus"

  font "Marcellus-Regular.ttf"

  zap :not_required
end
