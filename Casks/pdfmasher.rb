cask :v1 => 'pdfmasher' do
  version '0.7.4'
  sha256 '09940d6730d90bcf873e4d54262625ad566371258d14b0a6ac07a3b6dbcb9c30'

  url "http://download.hardcoded.net/pdfmasher_osx_#{version.gsub('.', '_')}.dmg"
  name 'PdfMasher'
  appcast 'http://www.hardcoded.net/updates/pdfmasher.appcast',
          :sha256 => '2007b9ce4044a444b80a80ec40016ae267a910f37880f0bed4dc881f2c3b18af'
  homepage 'http://www.hardcoded.net/pdfmasher/'
  license :gpl

  app 'PdfMasher.app'
end
