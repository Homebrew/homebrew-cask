cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.5"
  sha256 arm:   "589d4e7f757e3733a3b52e71ffaf4ee9b54adb650df6b47382068d25886dcb50",
         intel: "f06336b8698ddcc015eb9427a9c3c70b8332628920f37788f8cf53269c2d8673"

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
