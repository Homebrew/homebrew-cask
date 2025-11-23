cask "font-libre-barcode-39-extended-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/librebarcode39extendedtext/LibreBarcode39ExtendedText-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libre Barcode 39 Extended Text"
  homepage "https://fonts.google.com/specimen/Libre+Barcode+39+Extended+Text"

  font "LibreBarcode39ExtendedText-Regular.ttf"

  # No zap stanza required
end
