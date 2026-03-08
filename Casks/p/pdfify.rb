cask "pdfify" do
  version "4.3,43002"
  sha256 "79ea0bed3e2be9a0353d5055af6ffe935b1bf135dd8126637cc554b1fbfb2677"

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
