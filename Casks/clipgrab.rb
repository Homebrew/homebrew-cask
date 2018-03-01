cask 'clipgrab' do
  version '3.6.8'
  sha256 '2266da071cba1a802526508f2cf65154dcc2a6eeb5de78a31eefb01af3ec573b'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
