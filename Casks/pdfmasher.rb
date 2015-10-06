cask :v1 => 'pdfmasher' do
  version '0.7.4'
  sha256 '09940d6730d90bcf873e4d54262625ad566371258d14b0a6ac07a3b6dbcb9c30'

  url "http://download.hardcoded.net/pdfmasher_osx_#{version.gsub('.', '_')}.dmg"
  name 'PdfMasher'
  appcast 'http://www.hardcoded.net/updates/pdfmasher.appcast',
          :sha256 => '1bd38fbe25abdb9c2b5b4b46b11133c51c24c5f6587e1eddd01a2b66d3ecd7a0'
  homepage 'http://www.hardcoded.net/pdfmasher/'
  license :gpl

  app 'PdfMasher.app'
end
