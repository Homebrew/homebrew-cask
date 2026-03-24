cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.8.0"
  sha256 arm:   "b07e71daa2e5a0116b29b79eb02583a34449a3d4ef1e0311094102d175f556ec",
         intel: "46d1152b6e5281e8d7517bb8d7490023c956012862d47e6bb1a472b52f45a4cd"

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
