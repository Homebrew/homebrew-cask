cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.10.0"
  sha256 arm:   "2918ef73d55dc0e52c126806dc21f81be9503b8ea896968df59760cc5733d63a",
         intel: "6ca4a900236e2ce6689260ccd4126542c17ea9fbb0a976e0fe1449d9431025b5"

  url "https://github.com/Stirling-Tools/Stirling-PDF/releases/download/v#{version}/Stirling-PDF-macos-#{arch}.dmg",
      verified: "github.com/Stirling-Tools/Stirling-PDF/"
  name "Stirling-PDF"
  desc "PDF utility"
  homepage "https://stirlingpdf.com/"

  depends_on :macos

  app "Stirling-PDF.app"

  zap trash: [
    "~/Library/Application Support/stirling.pdf.dev",
    "~/Library/Caches/stirling.pdf.dev",
    "~/Library/Logs/Stirling-PDF",
    "~/Library/Logs/stirling.pdf.dev",
    "~/Library/WebKit/stirling.pdf.dev",
  ]
end
