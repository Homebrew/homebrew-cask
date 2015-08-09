cask :v1 => 'pdf-converter-master' do
  version '3.5.0'
  sha256 'c927cea0b588dfc421c6f2feec6ab4a660c554a039e2bb160840b3bac17ed5ba'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.delete('.')}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          :sha256 => 'be7221e35d5e4e564f34bb364705595a9a0c73868627614e4629728f3bd3fdf8'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'
  license :commercial

  app 'PDF Converter Master.app'
end
