cask 'pdfsam-basic' do
  version '3.3.5'
  sha256 'a053c1c1815d66110b7da8e598099896841dd36cb3672a5e79f3843fdc872688'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: 'd3f42385f6d99a2c1458ac801f3d7fae143338a6cc27844e3e9fc75c8f1aa508'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'

  app 'PDFsam.app'
end
