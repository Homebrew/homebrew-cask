cask 'pdf-converter-master' do
  version '4.0.0'
  sha256 '00e74521645b2b744836352d6be342f95fd80f4c8e85966a2afb016ce89bcefd'

  url "http://www.lightenpdf.com/download/download.aspx?file=PDF-Converter-Master-#{version.delete('.')}.zip"
  appcast 'http://www.lightenpdf.com/xml/PDF-Converter-Mac.xml',
          :checkpoint => '3b74497c5d1b1e0a57212ab8a54d564f016388f3d847938ff3878a1e0b0e889d'
  name 'PDF Converter Master'
  homepage 'http://www.lightenpdf.com/pdf-converter-mac.html'
  license :commercial

  app 'PDF Converter Master.app'
end
