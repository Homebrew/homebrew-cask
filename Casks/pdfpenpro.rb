cask 'pdfpenpro' do
  version '734.0,1451347715'
  sha256 'ee8c4b740633f86a4c1cedd9b0dcd5225a2569dc1b98d788fcea9e164d607daf'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpenPro/#{version.before_comma}/#{version.after_comma}/PDFpenPro-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpenPro.xml',
          :sha256 => 'b8c849323edd962b2a62c51bc861a3aed3aeb743ec5f059083c5a6df16b442a6'
  name 'PDFpenPro'
  homepage 'https://www.smilesoftware.com/PDFpenPro/'
  license :commercial

  app 'PDFpenPro.app'
end
