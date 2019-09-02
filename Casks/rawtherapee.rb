cask 'rawtherapee' do
  version '5.6'
  sha256 '274861597061e3febb204a8cd844bbadb20cdd925738f91d35fff382c6cec9f2'

  url "https://rawtherapee.com/releases_head/mac/RawTherapee_OSX_10.9_64_#{version}.zip"
  appcast 'https://github.com/Beep6581/RawTherapee/releases.atom'
  name 'RawTherapee'
  homepage 'https://rawtherapee.com/'

  container nested: "RawTherapee_OSX_10.9_64_#{version}.dmg"

  app 'RawTherapee.app'
end
