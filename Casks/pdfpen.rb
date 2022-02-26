cask "pdfpen" do
  version "13.1.2"
  sha256 "cb44ed59bd79dab99f5c6e33d9184975b388a9f14bb368a939e400bfd62043c6"

  url "https://cdn.smilesoftware.com/PDFpen_#{version.csv.first}.dmg"
  name "PDFpen"
  desc "PDF editing software"
  homepage "https://smilesoftware.com/PDFpen"

  livecheck do
    url "https://cgi.pdfpen.com/appcast/PDFpen#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "PDFpen.app"
end
