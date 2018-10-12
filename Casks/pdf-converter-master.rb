cask 'pdf-converter-master' do
  version '6.2.0'
  sha256 '8cd777bf9dde5d21ba5e073a8ee4b31282fa3c57f6ca31cb8100b31a4e1bcfd4'

  url "https://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.no_dots}.zip"
  appcast 'https://www.lightenpdf.com/xml/PDF-Converter-Mac.xml'
  name 'PDF Converter Master'
  homepage 'https://www.lightenpdf.com/pdf-converter-mac.html'

  app 'PDF Converter Master.app'
end
