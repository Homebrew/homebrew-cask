cask 'clipgrab' do
  version '3.6.5'
  sha256 'a16c0c5858be5dfd7aa57d7c9885c8da3cba29082b2f3e19cdc90a2a26accbda'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap delete: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
