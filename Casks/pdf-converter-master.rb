cask 'pdf-converter-master' do
  version '6.1.0'
  sha256 '707ba6aaa97e36d3fec5b4c2717b0001a165063331fe391cc166ec8b74d08097'

  url "https://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.no_dots}.zip"
  appcast 'https://www.lightenpdf.com/xml/PDF-Converter-Mac.xml'
  name 'PDF Converter Master'
  homepage 'https://www.lightenpdf.com/pdf-converter-mac.html'

  app 'PDF Converter Master.app'
end
