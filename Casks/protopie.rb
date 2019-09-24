cask 'protopie' do
  version '4.0.4'
  sha256 'd7c1fc3835b3c6d32289d15a9c66c637eb58ec545885155414cd91304c4b6ec6'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
