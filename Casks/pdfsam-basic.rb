cask 'pdfsam-basic' do
  version '3.2.2'
  sha256 'c57457fa03a943644ecf0b3ae189ccb1cdd4156157ac05be9d4846a29abcb08a'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}.RELEASE/PDFsam-#{version}.RELEASE.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: 'c50746704a30c294000a22a0acb4c7fea41e4b5f0f20fa8d961e4f0e5ca98893'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'

  app 'PDFsam.app'
end
