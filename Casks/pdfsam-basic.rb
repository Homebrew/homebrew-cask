cask 'pdfsam-basic' do
  version '3.2.5'
  sha256 '6234d07be4e7d2a1a3d0362c4c1869a53b339bc827ae487b2ac216d2a8db5718'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}.RELEASE/PDFsam-#{version}.RELEASE.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: 'ef88c183a2a75bfded198a862cb7286685646767d45bfa8145b8ad408a2f2d41'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'

  app 'PDFsam.app'
end
