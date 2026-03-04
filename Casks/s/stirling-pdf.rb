cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.6.0"
  sha256 arm:   "cc15e1d93e65949f0bb7791c7fc76a415f62488040b3b6ff59d011484b1eaca3",
         intel: "90620889771005e56a1520c307b76e73b697fb829a3727358371b76f5652a00a"

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
