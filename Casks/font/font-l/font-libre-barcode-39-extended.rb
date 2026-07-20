cask "font-libre-barcode-39-extended" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/librebarcode39extended/LibreBarcode39Extended-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libre Barcode 39 Extended"
  homepage "https://fonts.google.com/specimen/Libre+Barcode+39+Extended"

  font "LibreBarcode39Extended-Regular.ttf"

  # No zap stanza required
end
