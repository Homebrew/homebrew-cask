cask "pdfify" do
  version "5.2,52004"
  sha256 "25ef8931b33f497119c146fb7a42c865846d8a7e28585dc79c0ff07a2ae406a4"

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
