cask 'pdfsam-basic' do
  version '4.1.3'
  sha256 '1e2239f87493c12b22c80effd4325233647bdbddb457ce299148422a09d5989f'

  # github.com/torakiki/pdfsam/ was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom'
  name 'PDFsam Basic'
  homepage 'https://pdfsam.org/'

  app 'PDFsam Basic.app'
end
