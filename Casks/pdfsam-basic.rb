cask 'pdfsam-basic' do
  version '4.0.4'
  sha256 '4aea1fe056a51dc9137546a4cb2304c033959c3ed5fc7656ba42bd3cd94c3a6a'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'https://www.pdfsam.org/'

  pkg "PDFsam Basic-#{version}.pkg"

  uninstall pkgutil: 'org.pdfsam.basic'
end
