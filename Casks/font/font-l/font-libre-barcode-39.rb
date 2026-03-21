cask "font-libre-barcode-39" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/librebarcode39/LibreBarcode39-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libre Barcode 39"
  homepage "https://fonts.google.com/specimen/Libre+Barcode+39"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libre Barcode 39",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibreBarcode39-Regular.ttf"

  # No zap stanza required
end
