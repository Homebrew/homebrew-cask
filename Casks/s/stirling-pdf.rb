cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.3"
  sha256 arm:   "4057996ee5c9eec7160139a6a713a078b90f49073443d566bd8abee48357d638",
         intel: "4195882b37195a86a52182b3ec38ebf05af3abcbcd637b2808f0fa7b4961df1e"

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
