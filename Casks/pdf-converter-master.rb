cask 'pdf-converter-master' do
  version '6.0.0'
  sha256 'b949cf6bca92f47aa5b6909a962350721d42cc3d913c2e6d7498bc068b04e3da'

  url "https://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.no_dots}.zip"
  appcast 'https://www.lightenpdf.com/xml/PDF-Converter-Mac.xml'
  name 'PDF Converter Master'
  homepage 'https://www.lightenpdf.com/pdf-converter-mac.html'

  app 'PDF Converter Master.app'
end
