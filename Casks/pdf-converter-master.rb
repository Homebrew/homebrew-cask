cask 'pdf-converter-master' do
  version '5.1.0'
  sha256 '7380f0c9062a64cd83c3fe4268ae27fb796cced8797dba4e676e74fa3f30f3b7'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.no_dots}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          checkpoint: 'dbca8cd297fd79e1fa28d94b49770f28f572c728f6a7907a4fc669755961986e'
  name 'PDF Converter Master'
  homepage 'https://www.lightenpdf.com/pdf-converter-mac.html'

  app 'PDF Converter Master.app'
end
