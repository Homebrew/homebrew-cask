cask 'protopie' do
  version '4.3.1'
  sha256 '894c101b51858ef527c562c2bd666179efa09286be5c72abd8c4dad7dc641b54'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  auto_updates true

  app 'ProtoPie.app'
end
