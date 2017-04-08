cask 'pdf-converter-master' do
  version '5.2.0'
  sha256 '6e1cfb48fb72b47b6136761dd30daf28b52dbe256eecf26f4c277c3d21497a7c'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.no_dots}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          checkpoint: '9b07e17727c1b95fe60e04382e9eaaf70a5bc648632f61f4c188e925c1e114f1'
  name 'PDF Converter Master'
  homepage 'https://www.lightenpdf.com/pdf-converter-mac.html'

  app 'PDF Converter Master.app'
end
