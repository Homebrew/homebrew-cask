cask "pdfify" do
  version "3.5-200"
  sha256 "150c2a1905360bded1eef9afc65c38127037cc81e389ad68a339c9c52cec5a82"

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
