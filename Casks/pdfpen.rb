cask 'pdfpen' do
  version '1010.4,1526436120'
  sha256 '6aad129f1a4d0ab1c4c23d972f71922241373eb0081d88cc60c737c3a6299867'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '7545ce01fafb971f5fef57844d39b3e57fde73d81ed6b382770a030864edd595'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= :sierra'

  app 'PDFpen.app'
end
