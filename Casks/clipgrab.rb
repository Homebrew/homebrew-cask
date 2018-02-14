cask 'clipgrab' do
  version '3.6.7'
  sha256 '8e0593b69c293c86f14fbd4f736f1453a84faf2ea0b6c92ae09a8ff10638094b'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
