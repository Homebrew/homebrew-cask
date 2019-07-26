cask 'protopie' do
  version '3.11.2'
  sha256 '830fece8df3e8df67662d2c48568c9d134741697bd679d6c1c20f1c451721bd5'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
