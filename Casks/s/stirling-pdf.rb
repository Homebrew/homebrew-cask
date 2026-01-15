cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.3.0"
  sha256 arm:   "c3f5dde4f72ea4b5bb0e59751821cb2ee01f9cf114ad854fc62ab8fa80bb1062",
         intel: "2cc86d3578d2cc5910c8cfdd133a10d0efd19b5fc57739e32a8fd590f90a7680"

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
