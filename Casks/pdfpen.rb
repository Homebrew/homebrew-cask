cask 'pdfpen' do
  version '734.0,1451347971'
  sha256 '265eec35fa5f45c9623b7ee87bbfbc90f0afa2c146ca18a2e2da10774bee7389'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          :checkpoint => '5df0b2298faad1440ce2686145b6678843b9d195358d234d39a46eb99fce7fc1'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen/'
  license :commercial

  app 'PDFpen.app'
end
