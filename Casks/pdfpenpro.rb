cask "pdfpenpro" do
  version "12.2.2,1222.7"
  sha256 "ecabbe5bc4d8b152adc967c7d9c45d0db17554674231a0b3e16d9318cfd2877e"

  url "https://cdn.smilesoftware.com/PDFpenPro_#{version.before_comma}.dmg"
  name "PDFpenPro"
  desc "PDF editing software"
  homepage "https://smilesoftware.com/PDFpenPro"

  livecheck do
    url "https://smilesoftware.com/appcast/PDFpenPro#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "PDFpenPro.app"
end
