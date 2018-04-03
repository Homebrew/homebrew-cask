cask 'pdf-converter-master' do
  version '6.0.0'
  sha256 'b949cf6bca92f47aa5b6909a962350721d42cc3d913c2e6d7498bc068b04e3da'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.no_dots}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          checkpoint: '61b51d27774c6049376bd8a4b0db46d7c3d90acc6675b945a78813ce7d011a2e'
  name 'PDF Converter Master'
  homepage 'https://www.lightenpdf.com/pdf-converter-mac.html'

  app 'PDF Converter Master.app'
end
