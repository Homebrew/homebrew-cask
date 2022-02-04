cask "pdfify" do
  version "3.3.4-138"
  sha256 "58c460d7c590cb2bc9ca85c4551c60287cc431704390917bc47c1bf8aee18426"

  url "https://pdfify.app/get/cask/download/macos/PDFify-#{version}.zip"
  name "PDFify"
  desc "Create searchable and smaller PDF"
  homepage "https://pdfify.app/"

  livecheck do
    url "https://pdfify.app/updater-macos"
    regex(/PDFify[._-]v?(\d+(?:\.\d+)*-\d+)\.zip/i)
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
