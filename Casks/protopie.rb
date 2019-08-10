cask 'protopie' do
  version '4.0.2'
  sha256 'b4a625e0b9456b224d08eede1c950fd44106c4349e377c3477b2faf247ec8bb8'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
