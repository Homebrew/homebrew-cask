cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.1"
  sha256 arm:   "d4773e370c3694ce0c5daffd5879d0df8f792fdf838a0fd855af8d55dfcbfe9d",
         intel: "32a86be5a4c61b18160f6c87e5e770308cddff3a8161eb0890ad98e905baccb5"

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
