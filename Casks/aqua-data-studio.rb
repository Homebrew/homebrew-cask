cask 'aqua-data-studio' do
  version '18.0.13'
  sha256 '879181aeb6237118ed040a9095c1558ca182fb958a671783da9ae4f67e845084'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: 'ef91e22d2d66c511d7063eeaedf35b5cd7f0b3429b2c3724801b36e004923ef0'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
