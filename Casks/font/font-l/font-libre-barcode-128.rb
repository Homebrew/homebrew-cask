cask "font-libre-barcode-128" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/librebarcode128/LibreBarcode128-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Libre Barcode 128"
  homepage "https://fonts.google.com/specimen/Libre+Barcode+128"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Libre Barcode 128",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LibreBarcode128-Regular.ttf"

  # No zap stanza required
end
