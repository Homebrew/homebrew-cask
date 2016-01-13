cask 'pdfmasher' do
  version '0.7.4'
  sha256 '09940d6730d90bcf873e4d54262625ad566371258d14b0a6ac07a3b6dbcb9c30'

  url "https://download.hardcoded.net/pdfmasher_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/pdfmasher.appcast',
          :checkpoint => '0f4e6cdc0f03c82f21f9b152b41bed38a3d2e09733cf01c3baf249c3ca606f13'
  name 'PdfMasher'
  homepage 'https://www.hardcoded.net/pdfmasher/'
  license :gpl

  app 'PdfMasher.app'
end
