cask "pdf-reader-pro" do
  arch arm: "Apple", intel: "Intel"

  version "5.3.0"
  sha256 arm:   "91db221c01cad0b5d0f599f6bff713d96a6adfda7f17de2740580b84310f6f12",
         intel: "5c901e1b6e45c291fd2800b6ca347ec2d98274d4183a7d642d51fc262e6330b6"

  url "https://file.pdfreaderpro.com/download/PDFReaderPro_#{arch}_v#{version.major_minor_patch}.dmg"
  name "PDF Reader Pro"
  desc "Read, annotate, edit, convert, create, OCR, fill forms and sign PDFs"
  homepage "https://www.pdfreaderpro.com/"

  livecheck do
    url "https://www.pdfreaderpro.com/downloads/pdfreaderprocast.xml"
    regex(/PDFReaderPro[._-]intel[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :sparkle do |items, regex|
      items.map { |item| item.url[regex, 1] }
    end
  end

  auto_updates true
  depends_on macos: :big_sur

  app "PDF Reader Pro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brother.pdfreaderprofree.mac.sfl*",
    "~/Library/Application Support/com.brother.pdfreaderprofree.mac",
    "~/Library/Caches/com.brother.pdfreaderprofree.mac",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.bookmarks.plist",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.plist",
  ]
end
