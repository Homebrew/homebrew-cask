cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.1"
  sha256 arm:   "aa35f12b2d422881442e0a034777ab99810cbc903c82e81728f344775f0e6a7c",
         intel: "8d9b25aaf9d1dbc7898679e8c6819062585fabfca8ab4c95b2354fdaa2144a96"

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
