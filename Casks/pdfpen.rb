cask "pdfpen" do
  version "12.2.2,1222.7"
  sha256 "5beed8c14bf710ad973fdf01c2680b756ab7d6ae1add7652ab4a94595668c732"

  url "https://cdn.smilesoftware.com/PDFpen_#{version.before_comma}.dmg"
  name "PDFpen"
  desc "PDF editor"
  homepage "https://smilesoftware.com/PDFpen"

  livecheck do
    url "https://smilesoftware.com/appcast/PDFpen#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "PDFpen.app"
end
