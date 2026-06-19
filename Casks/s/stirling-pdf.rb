cask "stirling-pdf" do
  version "2.13.1"
  sha256 "a675acce15157ae8f3030fe4159c49a2c01e3cb86202f9baf4ba69cbdbfcfee7"

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
