cask 'protopie' do
  version '4.0.0'
  sha256 '859fe61e669fa8f16ecef7ed94ccfbb975a3fcbd4c00c78ca7e7ec746ebd5d15'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
