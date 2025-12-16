cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.4"
  sha256 arm:   "a497374ecbe0677b87687851b01754ee343d451c3de50587bd4c5137f72655c8",
         intel: "d77b6e82942754e169c9c4750e8dacd8c92d4760e8a18d9bc33de5fedcafc57b"

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
