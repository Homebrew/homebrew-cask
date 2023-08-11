cask "pdfify" do
  version "3.8-260"
  sha256 "54636e971244e33776464c4bad116a4ee98f50a30d365600a62798932c94f8d6"

  url "https://pdfify.app/get/cask/download/macos/PDFify-#{version}.zip"
  name "PDFify"
  desc "Create searchable and smaller PDF"
  homepage "https://pdfify.app/"

  livecheck do
    url "https://pdfify.app/updater-macos"
    regex(/PDFify[._-]v?(\d+(?:[.-]\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "PDFify.app"

  zap trash: [
    "~/Library/Application Support/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Caches/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Logs/PDFify",
    "~/Library/Preferences/de.holtwick.mac.homebrew.PDFify.plist",
  ]
end
