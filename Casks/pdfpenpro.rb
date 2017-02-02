cask 'pdfpenpro' do
  version '831.0,1483740107'
  sha256 '8edce0a326127243e93c7dd9029c15352b3d4e8ac07ca6817798ce41a448f042'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          checkpoint: '70d0e591bb0f201c5bf1f2202392c003da77272ae913b1a05d7e581649246097'
  name 'PDFpenPro'
  homepage 'https://smilesoftware.com/PDFpenPro'

  app 'PDFpenPro.app'
end
