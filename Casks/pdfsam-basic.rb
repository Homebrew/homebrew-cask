cask 'pdfsam-basic' do
  version '4.0.1'
  sha256 '36abf2a92602b12a30ac278283876703b9519e90f70e159ee507693193df6560'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'https://www.pdfsam.org/'

  pkg "PDFsam Basic-#{version}.pkg"

  uninstall pkgutil: 'org.pdfsam.basic'
end
