cask 'pdfsam-basic' do
  version '3.1.0'
  sha256 'ccb2a8dfe6509111b66d89cfd6c0404f6d674f5e6e319a732adbaae7957b6daf'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}.RELEASE/PDFsam-#{version}.RELEASE.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: '021f6c12c7e670d77fcd1497a728c8703fe069af99ecd3ce8cecdd0aba82e22a'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'
  license :gpl

  app 'PDFsam.app'
end
