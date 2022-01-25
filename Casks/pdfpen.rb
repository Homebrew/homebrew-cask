cask "pdfpen" do
  version "12.2.3,1223.1"
  sha256 "7aafb25ce3234bac3a6c499c31ef97ef478e3a059e82ac548a49a04a933c9d17"

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
