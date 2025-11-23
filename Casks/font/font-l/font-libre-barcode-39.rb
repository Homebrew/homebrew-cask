cask "font-libre-barcode-39" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/librebarcode39/LibreBarcode39-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libre Barcode 39"
  homepage "https://fonts.google.com/specimen/Libre+Barcode+39"

  font "LibreBarcode39-Regular.ttf"

  # No zap stanza required
end
