cask "pdfify" do
  version "3.3.3-136"
  sha256 "08c72b5e4bf83b1e948ec87caf74965191c505ed81eb08f6f7dce3741ccb49d0"

  url "https://pdfify.app/get/cask/download/macos/PDFify-#{version}.zip"
  name "PDFify"
  desc "Create searchable and smaller PDF"
  homepage "https://pdfify.app/"

  livecheck do
    url "https://pdfify.app/updater-macos"
    strategy :page_match
    regex(%r{url=.*?/PDFify-(\d+(?:\.\d+)*-\d+)\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "PDFify.app"

  zap trash: [
    "~/Library/Application Support/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Preferences/de.holtwick.mac.homebrew.PDFify.plist",
    "~/Library/Caches/de.holtwick.mac.homebrew.PDFify",
    "~/Library/Logs/PDFify",
  ]
end
