cask "pdfpen" do
  version "12.2.1"
  sha256 "699e7efaa219c3998b571e141891bc388d002caaf86a3a9d9582ec50bd547143"

  url "https://cdn.smilesoftware.com/PDFpen_#{version}.dmg"
  appcast "https://smilesoftware.com/appcast/PDFpen#{version.major}.xml"
  name "PDFpen"
  desc "PDF editor"
  homepage "https://smilesoftware.com/PDFpen"

  depends_on macos: ">= :sierra"

  app "PDFpen.app"
end
