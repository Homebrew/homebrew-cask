cask 'pdfsam-basic' do
  version '4.0.5'
  sha256 'ec42103101fd71f0bfbe98c651086f5e435d47b0e22249beea4e9ce429faccab'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'https://www.pdfsam.org/'

  pkg "PDFsam Basic-#{version}.pkg"

  uninstall pkgutil: 'org.pdfsam.basic'
end
