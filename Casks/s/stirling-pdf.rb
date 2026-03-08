cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.7.0"
  sha256 arm:   "ca2f85d6615ac3e8eba47f5c4646a9a41bb2c3a71db48d8468a0d54e9329236a",
         intel: "b9896710a9d29bdd0de78e2e4b984124323ecdb3f484816f20cc667edda6808f"

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
