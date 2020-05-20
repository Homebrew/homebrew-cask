cask 'protopie' do
  version '4.3.3'
  sha256 '4079a25137ecf854154270cb6a9e6f9bedbdcfd37df869e20547fc5fcb9bc107'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  auto_updates true

  app 'ProtoPie.app'
end
