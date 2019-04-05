cask 'clipgrab' do
  version '3.8.2'
  sha256 '82a9179466a2b34a78d51f35329240f099a3c5fc1404bcca4175e080afc65e05'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
