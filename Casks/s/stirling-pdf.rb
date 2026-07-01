cask "stirling-pdf" do
  version "2.14.0"
  sha256 "d970bf8d8f793804ebf1bac16e63e1891c3c01c7d84c9921c09dc0b295f27244"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-universal.dmg",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"
  name "Stirling-PDF"
  desc "PDF utility"
  homepage "https://stirling.com/"

  depends_on :macos

  app "Stirling PDF.app"

  zap trash: [
    "~/Library/Application Support/Stirling-PDF",
    "~/Library/Application Support/stirling.pdf.dev",
    "~/Library/Caches/stirling.pdf.dev",
    "~/Library/Logs/Stirling-PDF",
    "~/Library/Logs/stirling.pdf.dev",
    "~/Library/WebKit/stirling.pdf.dev",
  ]
end
