cask 'pdf-converter-master' do
  version '4.0.0'
  sha256 '00e74521645b2b744836352d6be342f95fd80f4c8e85966a2afb016ce89bcefd'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.delete('.')}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          checkpoint: 'd486d7161bfb9e7b084b58c8c7fd3ea0e052c603b5201ecef13c88a745a269a3'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'
  license :commercial

  app 'PDF Converter Master.app'
end
