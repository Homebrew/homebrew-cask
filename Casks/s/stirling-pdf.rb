cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.2"
  sha256 arm:   "186a689826b096683d40d8175e01ec39c9054dc6f0d7c5a61d1947cc0475939d",
         intel: "400757904c2c9a0c9d307ccbf769160a12aeb8883548216fa7a2495cbbc75382"

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
