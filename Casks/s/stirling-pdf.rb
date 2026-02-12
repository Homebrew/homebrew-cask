cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.6"
  sha256 arm:   "7c487ab058cb3595440c7e4c4848972bafd65b6bbdaf768c601af267a94954a7",
         intel: "32187bc8566d69e8cb8cb6c6742c64501f0d4fab208355ad119e39eb6578cfeb"

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
