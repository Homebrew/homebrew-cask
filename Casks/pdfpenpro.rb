cask "pdfpenpro" do
  version "12.2.3,1223.1"
  sha256 "6522b30a957ceeea13bc18506da501673ab3798fbdfe5fe73add6d764f5dc0a8"

  url "https://cdn.smilesoftware.com/PDFpenPro_#{version.csv.first}.dmg"
  name "PDFpenPro"
  desc "PDF editing software"
  homepage "https://smilesoftware.com/PDFpenPro"

  livecheck do
    url "https://cgi.pdfpen.com/appcast/PDFpenPro#{version.major}.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "PDFpenPro.app"
end
