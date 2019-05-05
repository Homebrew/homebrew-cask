cask 'protopie' do
  version '3.11.0'
  sha256 'b599a8c7949ab780fb854307e4bd555627b0572682de34dfaa1847ce0ee94f20'

  url "http://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
