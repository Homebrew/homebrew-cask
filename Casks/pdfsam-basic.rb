cask 'pdfsam-basic' do
  version '3.3.6'
  sha256 '886ff12f2d81dadc3ca538f779797ea1dfc104618470c12dcd02415f03d03bce'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'

  app 'PDFsam.app'
end
