cask 'pdfsam-basic' do
  version '4.0.3'
  sha256 'c96d058f625fc181830adad47e901cb739a71c11a7dc82e759973753511f6212'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'https://www.pdfsam.org/'

  pkg "PDFsam Basic-#{version}.pkg"

  uninstall pkgutil: 'org.pdfsam.basic'
end
