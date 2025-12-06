cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.1"
  sha256 arm:   "92888cd18124301e8744e4ff133d44a1b26a4ef36296922997e29ed2e9bd3e61",
         intel: "641974830c52403c5e30d2316bf83db8cb4ccf2000613591906a9c2708e4780f"

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
