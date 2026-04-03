cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.9.1"
  sha256 arm:   "be29e576e6b486b7a6252b2a35eee7701a14fd515fd7d902767712cd3537a920",
         intel: "8c2d69016ae6a58a2410dbe46164c297aa4ed45a2254bd60b23064553178e648"

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
