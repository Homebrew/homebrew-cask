cask "cisdem-pdfmanagerultimate" do
  version "3.2.0"
  sha256 :no_check

  url "https://www.cisdem.com/download/cisdem-pdfmanagerultimate.dmg"
  appcast "https://www.cisdem.com/pdf-manager-ultimate-mac/release-notes.html"
  name "Cisdem PDFManagerUltimate"
  homepage "https://www.cisdem.com/pdf-manager-ultimate-mac.html"

  app "Cisdem PDFManagerUltimate.app"
end
