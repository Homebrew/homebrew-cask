cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.2"
  sha256 arm:   "8bf116cb70cd1e12fdf90b622d51b5c535e9ce87ef84059913eb660154f03685",
         intel: "6f0d21b18759d2f9ffcfde61c59ea0b7a935929a9815e678b203e81dafc02e0c"

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
