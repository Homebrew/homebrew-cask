cask 'clipgrab' do
  version '3.6.2'
  sha256 '706f570b1b0171a4fba4f4a0b2a1e58560d31fbf1fa355ac63afd9740338e4d2'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap delete: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
