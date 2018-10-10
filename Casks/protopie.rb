cask 'protopie' do
  version '3.9.1'
  sha256 '4cda5fb8ad26b54f23e25a3dc5d8c18520c5391a61f479234b32999fad2d1b10'

  url "https://release.protopie.io/ProtoPie-#{version}.dmg"
  appcast 'https://www.protopie.io/support/updates/'
  name 'ProtoPie'
  homepage 'https://www.protopie.io/'

  app 'ProtoPie.app'
end
