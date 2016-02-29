cask 'aqua-data-studio' do
  version '17.0.3'
  sha256 'f3167e43d0be2d0cbf416749cc3cd77d8c4d52d8768ec831c2be6d96c8902c84'

  url "http://www.aquafold.com/download/v#{version.major}.0.0/osx/ads-osx-#{version}.tar.gz"
  name 'Aquafold Aqua Data Studio'
  homepage 'http://www.aquafold.com/aquadatastudio.html'
  license :commercial

  app 'Aqua Data Studio.app'
end
