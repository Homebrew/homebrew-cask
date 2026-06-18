cask "stirling-pdf" do
  version "2.13.0"
  sha256 "21011a6177268d06ec16ebd7e8861f3a69a436cbb769d65a5c66f53645f3d3a0"

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
