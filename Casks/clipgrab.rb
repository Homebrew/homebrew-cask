cask 'clipgrab' do
  version '3.6.3'
  sha256 '2779fe6ccb4be6e1cd0bf023c5f21b6bde38e33eab33acd4d4b2926ea914e24a'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap delete: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
