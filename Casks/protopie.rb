cask 'protopie' do
  version '3.10.0'
  sha256 'f449c1880a52baf30c59e4d3f41b05a2e93f0baedf1ecd277a29f5dcb7765e07'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
