cask 'clipgrab' do
  version '3.6.9'
  sha256 '7a4b15208a01c08e53f793802336e4930976e672bb04708f0a027d531250eeb8'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
