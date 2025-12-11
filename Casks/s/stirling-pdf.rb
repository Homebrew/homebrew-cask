cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.1.3"
  sha256 arm:   "88aee81e88a835310ff51a05dc950ee2182c4e9da37dabf160de743f9c6be3bc",
         intel: "2b39602fca5935b8c1cc68ad5a565565b22614fafe7d75b889afb5de73fd3492"

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
