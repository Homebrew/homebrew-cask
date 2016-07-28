cask 'pdf-converter-master' do
  version '4.0.0'
  sha256 '00e74521645b2b744836352d6be342f95fd80f4c8e85966a2afb016ce89bcefd'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.no_dots}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          checkpoint: '848c282285b93e0a8094961c1d6548663fe2b6d9f26a8e4b4f25b28bc2f64602'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'
  license :commercial

  app 'PDF Converter Master.app'
end
