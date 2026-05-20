cask "pdfify" do
  version "5.0,50022"
  sha256 "3fccdab50d22fdd4167982921bec01e22ba8213f56ce23686a8312e08b089d5b"

  url "https://pdfify.app/get/cask/download/macos/PDFify-#{version.csv.first}-#{version.csv.second}.zip"
  name "PDFify"
  desc "Create searchable and smaller PDF"
  homepage "https://pdfify.app/"

  livecheck do
    url "https://pdfify.app/updater-macos"
    strategy :sparkle
  end

  depends_on :macos

  app "PDFify.app"

  zap trash: [
    "~/Library/Application Support/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Caches/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Logs/PDFify",
    "~/Library/Preferences/de.holtwick.mac.homebrew.PDFify.plist",
  ]
end
