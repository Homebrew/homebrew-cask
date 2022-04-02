cask "abbyy-finereader-pdf" do
  version "1402.9"
  sha256 :no_check

  url "https://downloads.abbyy.com/fr/fr_mac/current/ABBYY_FineReader_PDF.dmg?secure=5c11NlPrQmIZeGn6dK2PZA=="
  name "ABBYY FineReader PDF"
  desc "Scan, OCR, and convert documents to searchable PDFs and other formats"
  homepage "https://pdf.abbyy.com/finereader-pdf-for-mac/"

  livecheck do
    url "https://www.abbyy.com/checkforupdates/?Product=FineReaderMac&Target=CheckUpdate&PartNumber=#{version}&Language=en"
    strategy :page_match do |page|
      page.scan(%r{(?:Update Part Number: |part# <b>)(\d+(?:[./]\d+)+)}i)
          .map { |match| match[0].tr("/", ".") }
    end
  end

  app "ABBYY FineReader PDF.app"

  zap trash: [
    "~/Library/Application Support/ABBYY",
    "~/Library/Preferences/com.abbyy.finereader.pdf.plist",
    "~/Library/Preferences/com.abbyy.FineReader.plist",
    "~/Library/Preferences/com.abbyy.FRPDFViewer.plist",
    "~/Library/Preferences/com.abbyy.ImageProcessService*.plist",
    "~/Library/Saved Application State/com.abbyy.FineReader.savedState",
    "~/Library/Saved Application State/com.abbyy.FRPDFViewer.savedState",
  ]
end
