cask 'aqua-data-studio' do
  version '18.0.14'
  sha256 '6e5f72dba68a120d75b59652aadfe2da283f0922d15e9d69df5903b987753533'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: 'ef91e22d2d66c511d7063eeaedf35b5cd7f0b3429b2c3724801b36e004923ef0'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
