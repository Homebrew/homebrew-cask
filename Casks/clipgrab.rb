cask 'clipgrab' do
  version '3.8.12'
  sha256 'e16e397a8c65eea96999cea03295ed656962422cd7f88875341e6fd67dfa8b62'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  depends_on macos: '>= :sierra'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
