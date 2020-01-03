cask 'clipgrab' do
  version '3.8.9'
  sha256 '5d92f7dea6f46a1baa231250a0cedc5ac370421da9a3a30f5c57cb41492856be'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  depends_on macos: '>= :sierra'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
