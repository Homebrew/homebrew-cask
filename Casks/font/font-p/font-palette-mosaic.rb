cask "font-palette-mosaic" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/palettemosaic/PaletteMosaic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Palette Mosaic"
  homepage "https://fonts.google.com/specimen/Palette+Mosaic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Palette Mosaic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "PaletteMosaic-Regular.ttf"

  # No zap stanza required
end
