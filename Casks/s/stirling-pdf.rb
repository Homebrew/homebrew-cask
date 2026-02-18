cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.1"
  sha256 arm:   "5af8b4f115677b69b89fdee8f2ce7b0eda1331ec290aa2c32549e629d1739bbf",
         intel: "50a5d786cbe3b460fffaed11f39c7e3f2a6e29b41b53c060f588ddee427b33ab"

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
