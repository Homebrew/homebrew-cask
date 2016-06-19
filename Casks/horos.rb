cask 'horos' do
  version '1.1.7'
  sha256 'd15e02d7678e0f41ad12910176307aeb6312e62d7386051bfe5a261a7feb004a'

  url "http://www.horosproject.org/wp-content/uploads/downloads/Horos#{version}.dmg"
  name 'Horos – Free, open medical image viewer'
  homepage 'http://www.horosproject.org'
  license :gpl

  app 'Horos.app'
end
