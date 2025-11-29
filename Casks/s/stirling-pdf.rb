cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.1"
  sha256 arm:   "48cd6a87cf13cafbaacd536285947c81cc43f81fd91ecaf70c77109d435c0182",
         intel: "78b19559f4d246cfadc28977450ded95b4d4bb846ca64847abeb43a7e896b717"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-#{arch}.dmg",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"
  name "Stirling-PDF"
  desc "PDF utility"
  homepage "https://stirlingpdf.com/"

  app "Stirling-PDF.app"

  zap trash: [
    "~/Library/Application Support/stirling.pdf.dev",
    "~/Library/Caches/stirling.pdf.dev",
    "~/Library/Logs/Stirling-PDF",
    "~/Library/Logs/stirling.pdf.dev",
    "~/Library/WebKit/stirling.pdf.dev",
  ]
end
