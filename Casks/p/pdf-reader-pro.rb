cask "pdf-reader-pro" do
  version "3.0.0.0"
  sha256 "5b5d42f32da0e297bbe1b95a385c535c124fb07f26eefb722c3a279e770d35c0"

  url "https://www.pdfreaderpro.com/downloads/PDFReaderPro_v#{version.major_minor_patch}.dmg"
  name "PDF Reader Pro"
  desc "Read, annotate, edit, convert, create, OCR, fill forms and sign PDFs"
  homepage "https://www.pdfreaderpro.com/"

  livecheck do
    url "https://www.pdfreaderpro.com/downloads/pdfreaderprocast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :high_sierra"

  app "PDF Reader Pro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brother.pdfreaderprofree.mac.sfl2",
    "~/Library/Application Support/com.brother.pdfreaderprofree.mac",
    "~/Library/Caches/com.brother.pdfreaderprofree.mac",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.bookmarks.plist",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.plist",
  ]
end
