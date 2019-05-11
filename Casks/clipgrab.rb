cask 'clipgrab' do
  version '3.8.3'
  sha256 '2e5cc18adfa0b7cd7e0491bd299b8a5af710c32edd31aa98bc56f553ac2886a8'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
