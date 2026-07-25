cask "font-libre-barcode-128-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/librebarcode128text/LibreBarcode128Text-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libre Barcode 128 Text"
  homepage "https://fonts.google.com/specimen/Libre+Barcode+128+Text"

  font "LibreBarcode128Text-Regular.ttf"

  # No zap stanza required
end
