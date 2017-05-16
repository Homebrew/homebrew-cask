cask 'pdfsam-basic' do
  version '3.3.0'
  sha256 'c89c73d6e47ae609f55aa65d8d8c45f53d326750600966218a62cb8f468361c7'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: '344c53a87c014250f9388e0c9ea18989b3551774be977b31c2d11c4fd83d186c'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'

  app 'PDFsam.app'
end
