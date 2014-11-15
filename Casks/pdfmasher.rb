cask :v1 => 'pdfmasher' do
  version '0.7.4'
  sha256 '09940d6730d90bcf873e4d54262625ad566371258d14b0a6ac07a3b6dbcb9c30'

  url "http://download.hardcoded.net/pdfmasher_osx_#{version.gsub('.', '_')}.dmg"
  homepage 'http://www.hardcoded.net/pdfmasher/'
  license :unknown

  app 'PdfMasher.app'
end
