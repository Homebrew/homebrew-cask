cask 'pdfelementpro' do
  version '6.6.1,2992'
  sha256 '1b4ea505e82cd01f5aacb0e7501d0999cbdf28159eb3874f1710041b5523a40b'

  url "http://download.wondershare.com/cbs_down/mac-pdfelement#{version.major}-pro_full#{version.after_comma}.dmg"
  name 'Wondershare PDFelement Professional for Mac'
  homepage 'https://pdf.wondershare.com/'

  app "PDFelementPro#{version.major}.app"
end
