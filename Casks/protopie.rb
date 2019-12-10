cask 'protopie' do
  version '4.2.0'
  sha256 'b08e84b79c26e5fffc1e76f66e754d0242085bcdd500860b9656dac314224583'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
