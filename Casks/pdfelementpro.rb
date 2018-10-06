cask 'pdfelementpro' do
  version '6.7.5,2992'
  sha256 'e1c968b2f03af19ebc18dd0d2dbd002e70eedc0ed5b956cc17a0a2d32ddcebff'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}-pro_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement Professional for Mac'
  homepage 'https://pdf.wondershare.com/'

  app "PDFelementPro#{version.major}.app"
end
