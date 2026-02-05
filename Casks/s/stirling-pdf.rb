cask "stirling-pdf" do
  arch arm: "aarch64", intel: "x86_64"

  version "2.4.4"
  sha256 arm:   "0a0d83d9dc67435962464fcc2ca51f265c4d30a91d95fe1a63dfaf2145294030",
         intel: "7322012b9ea397835249443ca46231270800058f111b1104c62acb1a5c3ebc31"

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
