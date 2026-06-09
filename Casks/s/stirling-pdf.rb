cask "stirling-pdf" do
  version "2.12.0"
  sha256 "319da4ad0e873387780cbc5360e62e9119ac31e5a8459aa4b68c8fa53c5b5500"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-universal.dmg",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"
  name "Stirling-PDF"
  desc "PDF utility"
  homepage "https://stirling.com/"

  depends_on :macos

  app "Stirling-PDF.app"

  zap trash: [
    "~/Library/Application Support/Stirling-PDF",
    "~/Library/Application Support/stirling.pdf.dev",
    "~/Library/Caches/stirling.pdf.dev",
    "~/Library/Logs/Stirling-PDF",
    "~/Library/Logs/stirling.pdf.dev",
    "~/Library/WebKit/stirling.pdf.dev",
  ]
end
