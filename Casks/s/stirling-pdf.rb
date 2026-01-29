cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.1"
  sha256 arm:   "356265a71b4c9f71bc98b998495675e58389b25682d8bba59012a171bb856f28",
         intel: "5648458e650aecfedcf1101cced4b45e2e37c573d2cd5bc5882773638545c64a"

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
