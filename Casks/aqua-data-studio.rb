cask 'aqua-data-studio' do
  version '18.0.18'
  sha256 'a0bb9550c865f212a7574fff7bb8639ad87173b9d3d04e0fa0c90832e6c6e9b5'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  appcast 'http://www.aquafold.com/download/',
          checkpoint: 'a883b6dc85848ec13359548a48f6359ff5d5b565b45689c5d77d603793251def'
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'

  app 'Aqua Data Studio.app'
end
