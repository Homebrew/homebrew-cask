cask 'clipgrab' do
  version '3.7.2'
  sha256 'fb9a6c2ad6ea68dba6f4e5d192a7c6e0c02ea9d4d09d6c9fc7683647db934614'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
