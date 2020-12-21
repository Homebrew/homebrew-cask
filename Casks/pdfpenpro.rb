cask "pdfpenpro" do
  version "12.2.1,1221.6"
  sha256 "b57eaf456ef5863cbfc6e2b0217ec818d2a3dfc08a511f9b446d3cadaa107690"

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
