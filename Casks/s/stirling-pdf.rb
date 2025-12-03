cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.0.3"
  sha256 arm:   "1c898649e929a203f7c31b09286d2ef16d7b3088e18010df0c0a39e1459ea4ee",
         intel: "fbffb330e87397719cff4f9e12836eff838413532f7e32fb1966867c103b03ea"

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
