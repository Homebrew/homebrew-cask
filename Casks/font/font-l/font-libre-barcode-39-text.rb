cask "font-libre-barcode-39-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/librebarcode39text/LibreBarcode39Text-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libre Barcode 39 Text"
  homepage "https://fonts.google.com/specimen/Libre+Barcode+39+Text"

  font "LibreBarcode39Text-Regular.ttf"

  # No zap stanza required
end
