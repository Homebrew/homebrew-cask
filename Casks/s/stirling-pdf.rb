cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.9.0"
  sha256 arm:   "e07027f3d10759e05a75f146077426d1e59f489b83025d1c31247404f86bd7a1",
         intel: "9849d99bb90013af0e805ddf12622649e99e60be865710c7a454c80fd28ec86b"

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
