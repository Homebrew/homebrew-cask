cask 'rawtherapee' do
  version '5.7'
  sha256 '70f7b7fec75f2799d80b2f960cf98815d5a5b199342d993a6019eeb153332c3d'

  url "https://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.9_64_#{version}.zip"
  appcast 'https://github.com/Beep6581/RawTherapee/releases.atom'
  name 'RawTherapee'
  homepage 'https://rawtherapee.com/'

  container nested: "RawTherapee_OSX_10.9_64_#{version}.dmg"

  app 'RawTherapee.app'
end
