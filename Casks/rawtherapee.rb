cask 'rawtherapee' do
  version '5.5'
  sha256 '2ca1635ab86decb46285a16f21e334e2949ebbf27ffc09567d83be7d36a4ec86'

  url "https://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.9_64_#{version}.zip"
  appcast 'https://github.com/Beep6581/RawTherapee/releases.atom'
  name 'RawTherapee'
  homepage 'https://rawtherapee.com/'

  container nested: "RawTherapee_OSX_10.9_64_#{version}.dmg"

  app 'RawTherapee.app'
end
