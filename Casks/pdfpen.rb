cask 'pdfpen' do
  version '1001.3,1523932069'
  sha256 'ac69c07435762db6b4f42f7bfef6af8d978be1153df007eec1f757c36cb5f695'

  url "https://dl.smilesoftware.com/com.smileonmymac.PDFpen/#{version.before_comma}/#{version.after_comma}/PDFpen-#{version.before_comma}.zip"
  appcast 'https://updates.smilesoftware.com/com.smileonmymac.PDFpen.xml',
          checkpoint: '00a06e69d5591f449bd3b31c33eed377b8fddc95feaa94fe359dee15e93bafd2'
  name 'PDFpen'
  homepage 'https://smilesoftware.com/PDFpen'

  depends_on macos: '>= sierra'

  app 'PDFpen.app'
end
