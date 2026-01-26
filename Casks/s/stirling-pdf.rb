cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.0"
  sha256 arm:   "eaca8ef8009921907a41f43cbbbb52d2659210344466ab17f0b20daa15e8ebeb",
         intel: "c19287762a2774ac15d894d558c856acc4120805b5e0923786305a13b5074a92"

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
