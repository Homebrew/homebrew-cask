cask 'protopie' do
  version '4.0.3'
  sha256 '8995a89410ab38dcdd5ea52008a26063b8e6bf766933d67c88e03b2bd955b140'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
