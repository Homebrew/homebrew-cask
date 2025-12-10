cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.2"
  sha256 arm:   "4762c21d322f308357d9bf5ce24c255a55f4e6045841a1e86ce2e8169a8faa2d",
         intel: "a415cae869a606730efccbfef3da265b7440a77df34b7aa79ff0673e1ad64705"

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
