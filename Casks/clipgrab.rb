cask 'clipgrab' do
  version '3.8.11'
  sha256 'a06e8e3897ec1366349a613245f6e8f48d73bbb2f222c2cb27ac704e3bd5c3d3'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  depends_on macos: '>= :sierra'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
