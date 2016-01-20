cask 'pdf-converter-master' do
  version '4.0.0'
  sha256 '00e74521645b2b744836352d6be342f95fd80f4c8e85966a2afb016ce89bcefd'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.delete('.')}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          checkpoint: '0be82ad8f453568c2d79fd1b40c8d751e594ed9872adf2cbd6e40605b6049b2a'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'
  license :commercial

  app 'PDF Converter Master.app'
end
