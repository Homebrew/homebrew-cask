cask 'clipgrab' do
  version '3.5.5'
  sha256 '35a0a25ffaea11a4795e0564711d816f443e6c3ad6d2f8aa6de749d796220ade'

  url "http://download.clipgrab.de/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'http://clipgrab.org'
  license :gratis

  app 'ClipGrab.app'

  zap delete: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
