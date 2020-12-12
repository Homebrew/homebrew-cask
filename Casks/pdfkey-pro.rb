cask "pdfkey-pro" do
  version "4.3.9,40309"
  sha256 :no_check

  url "https://pdfkey.com/PDFKeyPro.dmg"
  appcast "https://pdfkey.com/PDFKeyProUpdateFX.xml"
  name "PDFKey Pro"
  homepage "https://pdfkey.com/"

  app "PDFKey Pro.app"
end
