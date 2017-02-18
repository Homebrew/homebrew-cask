cask 'cerebro' do
  version '0.2.6'
  sha256 'cf77f9957307a742a793fe05257e3d01816810fa7fe6d5d7c9c519ffb5d5a05d'

  # github.com/KELiON/cerebro was verified as official when first introduced to the cask
  url "https://github.com/KELiON/cerebro/releases/download/#{version}/cerebro-#{version}.dmg"
  appcast 'https://github.com/KELiON/cerebro/releases.atom',
          checkpoint: '1d36f6e00b9aa3fd4760f8c2e65c83a606551a7279bd5667f70af38bf8eb56bb'
  name 'Cerebro'
  homepage 'https://cerebroapp.com/'

  app 'Cerebro.app'
end
