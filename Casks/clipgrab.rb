cask 'clipgrab' do
  version '3.6.1'
  sha256 'd5c3f20bc0d659606a9f36274a3c6dc4cca1aac50a6e0891e4ab2136e21af67b'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap delete: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
