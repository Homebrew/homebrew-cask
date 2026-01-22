cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.3.1"
  sha256 arm:   "473d090f2c58453421910e81ecc7b60c19064d75250f502ccd557c321330c57e",
         intel: "d7faf438eb06fcf59c34efd4e7afbc2dc6933f4a1697af9fa47eac3f5d9d80ab"

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
