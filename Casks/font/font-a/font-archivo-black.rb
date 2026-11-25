cask "font-archivo-black" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/archivoblack/ArchivoBlack-Regular.ttf"
  name "Archivo Black"
  homepage "https://fonts.google.com/specimen/Archivo+Black"

  font "ArchivoBlack-Regular.ttf"

  zap :not_required
end
