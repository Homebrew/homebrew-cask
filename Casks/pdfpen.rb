cask "pdfpen" do
  version "13.1"
  sha256 "1f76e0d76eedc6d9d1d013f380cf101507a2ca858e669e25786a01418041231d"

  url "https://cdn.smilesoftware.com/PDFpen_#{version}.dmg"
  name "PDFpen"
  desc "PDF editing software"
  homepage "https://smilesoftware.com/PDFpen"

  livecheck do
    url "https://cgi.pdfpen.com/appcast/PDFpen#{version.major}.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :sierra"

  app "PDFpen.app"
end
