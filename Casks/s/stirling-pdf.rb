cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.5.2"
  sha256 arm:   "b79cdea9d2f6970b2f8a5fb74c12414be1cf51db9fc2df79940271ba1597489c",
         intel: "b123c53ece37b97fe3528649e95d717597904f1ee7a70b7c5573fca7e1e3be60"

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
