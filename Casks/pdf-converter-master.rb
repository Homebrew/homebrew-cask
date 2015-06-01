cask :v1 => 'pdf-converter-master' do
  version :latest
  sha256 :no_check

  url 'http://www.lightenpdf.com/Product/DownLoad.aspx?id=24&&t=0'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'
  license :commercial

  app 'PDF Converter Master.app'
end
