cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.9.2"
  sha256 arm:   "38cdedd27b559556bed2bf5a28303bca8b26cee2351fd13b86e4f4cbc5a9b95e",
         intel: "4070495dcc283cdafc9cba3fe363cdadb31f7932fb33bfbe1b4f7540661f9c11"

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
