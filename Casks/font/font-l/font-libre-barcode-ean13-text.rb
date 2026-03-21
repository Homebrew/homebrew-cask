cask "font-libre-barcode-ean13-text" do
  version "1.008"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/librebarcodeean13text/LibreBarcodeEAN13Text-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libre Barcode EAN13 Text"
  homepage "https://fonts.google.com/specimen/Libre+Barcode+EAN13+Text"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libre Barcode EAN13 Text",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibreBarcodeEAN13Text-Regular.ttf"

  # No zap stanza required
end
