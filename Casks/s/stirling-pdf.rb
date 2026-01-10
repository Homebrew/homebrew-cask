cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.2.0"
  sha256 arm:   "2d5db5694f202954573ff99af7654790fb30861eb5b3da907b0ec399ac10dc8a",
         intel: "ad2a8406db40c51dc5fa3d2170c8cbfb2f4dc1a267258d1ee622947cb2447771"

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
