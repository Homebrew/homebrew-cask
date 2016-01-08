cask 'pdfpen' do
  version '734.0,1451347971'
  sha256 '265eec35fa5f45c9623b7ee87bbfbc90f0afa2c146ca18a2e2da10774bee7389'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          :sha256 => '48ee58e738d901c4e78daef48e231ce4acf25d20501e892c6b36e86b63f31217'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end
