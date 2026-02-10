cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.5"
  sha256 arm:   "24472b9809a193081debeba6fc52c817654d4a8fd945d798cd0b3783d43ad7a7",
         intel: "ac4e8756fb5253135aa151fd2cff2f1021b105ce3b1be5e9f91707e4f6c680d6"

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
