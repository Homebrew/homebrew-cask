cask 'pdfsam-basic' do
  version '4.1.2'
  sha256 '4df015526d6e883b219f90b382be3dc3dcbed4fd786415d68e20308e551b6b62'

  # github.com/torakiki/pdfsam/ was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'https://pdfsam.org/'

  app 'PDFsam Basic.app'
end
