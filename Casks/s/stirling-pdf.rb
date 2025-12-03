cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.0"
  sha256 arm:   "e2e64dbdd6f268b94e9c20659a018ce1ecd24839c72b154ab5251a1967bf8ef8",
         intel: "931e31cc334e5da9dfee08cc35d2238f9da11fe3a0aebb899bbe90186f862bbc"

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
