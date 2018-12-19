cask 'pdfsam-basic' do
  version '3.3.7'
  sha256 '74cdfb48751f30a60cd241ed19bf1af7714a2e3dc257125b3db589d899c1b9d3'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'https://www.pdfsam.org/'

  app 'PDFsam Basic.app'
end
