cask 'gqrx' do
  version '2.8-1'
  sha256 '2ce8a1d28b60197d45c3c1925e21c68b8724b7297e3eed4afb2d081a6e21f1d7'

  # github.com/csete/gqrx was verified as official when first introduced to the cask
  url "https://github.com/csete/gqrx/releases/download/v#{version.major_minor}/Gqrx-#{version}.dmg"
  appcast 'https://github.com/csete/gqrx/releases.atom',
          checkpoint: '64b9804ba7ee2a695d6fe91f4bac8067111b75bca5e79fcc5769b67450620ca0'
  name 'Gqrx'
  homepage 'http://gqrx.dk/'

  app 'Gqrx.app'
end
