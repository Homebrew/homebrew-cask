cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.0"
  sha256 arm:   "a2d8edea257b39531476b8b1a7324dd1b69915a9d9935c911a698f7c791de978",
         intel: "3fc7afb8625037f35c285aeb80d8bbfd34d4f72568607d28771456003b911308"

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
