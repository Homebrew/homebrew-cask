cask "pdf-converter-master" do
  version "6.2.0"
  sha256 "627013bbffbb7beafc864bff64e961f776879b7b5dcc8faf1934d6dd4337f8dd"

  url "https://www.lightenpdf.com/upload/download/pdf-converter-master-#{version.no_dots}.dmg"
  name "PDF Converter Master"
  desc "Document converter"
  homepage "https://www.lightenpdf.com/pdf-converter-mac.html"

  livecheck do
    url "https://www.lightenpdf.com/xml/PDF-Converter-Mac.xml"
    strategy :sparkle
  end

  app "PDF Converter Master.app"

  zap trash: [
    "~/Library/HTTPStorages/com.lightenpdf.pdfconverterweb",
    "~/Library/Preferences/com.lightenpdf.pdfconverterweb.plist",
    "~/Library/Saved Application State/com.lightenpdf.pdfconverterweb.savedState",
  ]
end
