cask 'protopie' do
  version '4.2.1'
  sha256 'a7a45d3563ff7b6e92ea2569b23d5ae024825e92ae50f48df02ad048c8028085'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
