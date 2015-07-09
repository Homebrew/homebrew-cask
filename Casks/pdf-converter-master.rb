cask :v1 => 'pdf-converter-master' do
  version :latest
  sha256 :no_check

  url 'http://www.lightenpdf.com/Product/DownLoad.aspx?id=24&&t=0'
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          :sha256 => 'be7221e35d5e4e564f34bb364705595a9a0c73868627614e4629728f3bd3fdf8'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'
  license :commercial

  app 'PDF Converter Master.app'
end
