cask 'pdf-converter-master' do
  version '5.0.0'
  sha256 '9d853fd5cb8c8421f44e2c136aaa5a9f6a5168c9b1601a489f2dc257c24d52f7'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.no_dots}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          checkpoint: '34cdbc6f6d9f7ca079b4cb8732bd22a4716939a17f3a7942813a1756282b4657'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'

  app 'PDF Converter Master.app'
end
