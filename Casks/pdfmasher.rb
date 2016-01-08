cask 'pdfmasher' do
  version '0.7.4'
  sha256 '09940d6730d90bcf873e4d54262625ad566371258d14b0a6ac07a3b6dbcb9c30'

  url "https://download.hardcoded.net/pdfmasher_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/pdfmasher.appcast',
          :sha256 => '400556f9c424326d59f9e3c571f86b93c40e34671c2eb1fb513668a6d1dd7553'
  name 'PdfMasher'
  homepage 'https://www.hardcoded.net/pdfmasher/'
  license :gpl

  app 'PdfMasher.app'
end
