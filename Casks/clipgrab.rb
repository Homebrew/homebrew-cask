cask 'clipgrab' do
  version '3.8.5'
  sha256 '53227ad63233d6e5e6b371e0606b1ca3d6b9f840a3d61f296bf91d92ee85e831'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
