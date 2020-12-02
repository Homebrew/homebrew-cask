cask "pdf-reader-pro" do
  version :latest
  sha256 :no_check

  url "https://www.pdfreaderpro.com/downloads/PDFReaderPro.dmg"
  name "PDF Reader Pro"
  desc "Read, annotate, edit pages, convert, create, OCR, fill forms and sign PDFs"
  homepage "https://www.pdfreaderpro.com/"

  app "PDF Reader Pro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brother.pdfreaderprofree.mac.sfl2",
    "~/Library/Application Support/com.brother.pdfreaderprofree.mac",
    "~/Library/Caches/com.brother.pdfreaderprofree.mac",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.bookmarks.plist",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.plist",
  ]
end
