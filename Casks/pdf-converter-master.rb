cask :v1 => 'pdf-converter-master' do
  version '4.0.0'
  sha256 '00e74521645b2b744836352d6be342f95fd80f4c8e85966a2afb016ce89bcefd'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.delete('.')}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          :sha256 => '727005e9425435c21808330d88b54bf4df4269db290f8c4ddcc9ed49b2d4ca53'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'
  license :commercial

  app 'PDF Converter Master.app'
end
