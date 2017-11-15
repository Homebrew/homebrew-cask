cask 'pdfsam-basic' do
  version '3.3.4'
  sha256 '81188773b21d129dc2b7637d8a260ae28603f7ce37e84ac8742aab30df184e88'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: 'f32526db8fb329d4483c582b59b4510dfd3e70810eae8085e609542045bec1d9'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'

  app 'PDFsam.app'
end
