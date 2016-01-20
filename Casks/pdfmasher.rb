cask 'pdfmasher' do
  version '0.7.4'
  sha256 '09940d6730d90bcf873e4d54262625ad566371258d14b0a6ac07a3b6dbcb9c30'

  url "https://download.hardcoded.net/pdfmasher_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/pdfmasher.appcast',
          checkpoint: 'ac03fce02d8d6c6ede8159a0b59e1da5b25cbeb9895ca878081efd1be69ad1ef'
  name 'PdfMasher'
  homepage 'https://www.hardcoded.net/pdfmasher/'
  license :gpl

  app 'PdfMasher.app'
end
