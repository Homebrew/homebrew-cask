cask 'clipgrab' do
  version '3.5.6'
  sha256 '3d48056e796c884ef6c2d7de71fb077b94d30508779661ebe43f462340c3759f'

  url "http://download.clipgrab.de/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'http://clipgrab.org'
  license :gratis

  app 'ClipGrab.app'

  zap delete: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
