cask 'protopie' do
  version '4.0.5'
  sha256 'cf7b4a0eff06ffeb9941b995563d4f4831c09e01e5d92cd640f7b45b830418f4'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
