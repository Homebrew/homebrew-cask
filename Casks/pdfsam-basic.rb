cask 'pdfsam-basic' do
  version '4.1.1'
  sha256 '7456fca90ab9168fb4ef3f3b665182fea588a53c897e5e1fe6a2c43a802c6c6d'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'https://www.pdfsam.org/'

  pkg "PDFsam Basic-#{version}.pkg"

  uninstall pkgutil: 'org.pdfsam.basic'
end
