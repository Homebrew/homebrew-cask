cask "pdfify" do
  version "4.1,41010"
  sha256 "e5ce842b22a2c2e2c36537f663a2f67003c8a809b092a91815408ec823c89521"

  url "https://pdfify.app/get/cask/download/macos/PDFify-#{version.csv.first}-#{version.csv.second}.zip"
  name "PDFify"
  desc "Create searchable and smaller PDF"
  homepage "https://pdfify.app/"

  livecheck do
    url "https://pdfify.app/updater-macos"
    strategy :sparkle
  end

  app "PDFify.app"

  zap trash: [
    "~/Library/Application Support/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Caches/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Logs/PDFify",
    "~/Library/Preferences/de.holtwick.mac.homebrew.PDFify.plist",
  ]
end
