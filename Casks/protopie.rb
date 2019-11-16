cask 'protopie' do
  version '4.1.1'
  sha256 '09510695fea795e4354cc3eac2ed36f8006328bdf29c7d19d9c3c96627ba8ae8'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
