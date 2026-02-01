cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.3"
  sha256 arm:   "ed0be87e984201225981baac04f11a5c0b4536f76dc993d2f973f6cdc0bff462",
         intel: "cab92326c5a871383f2ba4e83935e4da27b7494d8bff0d59dacbb49a9bd84b02"

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
