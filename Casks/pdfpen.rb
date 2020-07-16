cask 'pdfpen' do
  version '1212.1,1594827478'
  sha256 'bbbdd5f1e0a9e391f05063443ffa66c5e9d3378701a89b43a1503c6bc8c49223'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= :sierra'

  app 'PDFpen.app'
end
