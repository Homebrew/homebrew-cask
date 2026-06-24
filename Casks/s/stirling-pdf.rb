cask "stirling-pdf" do
  version "2.13.2"
  sha256 "7a39c704b32e17337e4502d2ab13d4d854d3f4b336d77008cfbf44a5547af45b"

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
