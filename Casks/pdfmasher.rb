cask 'pdfmasher' do
  version '0.7.4'
  sha256 '09940d6730d90bcf873e4d54262625ad566371258d14b0a6ac07a3b6dbcb9c30'

  url "https://download.hardcoded.net/pdfmasher_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/pdfmasher.appcast',
          checkpoint: '0b0978dd0379ce2a1be57a4dd4618d3d253910f763bd4feff5cfc870f9f8f66b'
  name 'PdfMasher'
  homepage 'https://www.hardcoded.net/pdfmasher/'

  app 'PdfMasher.app'
end
