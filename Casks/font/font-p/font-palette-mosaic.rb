cask "font-palette-mosaic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/palettemosaic/PaletteMosaic-Regular.ttf"
  name "Palette Mosaic"
  homepage "https://fonts.google.com/specimen/Palette+Mosaic"

  font "PaletteMosaic-Regular.ttf"

  zap :not_required
end
