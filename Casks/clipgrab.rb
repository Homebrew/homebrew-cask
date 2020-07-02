cask 'clipgrab' do
  version '3.8.13'
  sha256 '3b78e17cd8f91f2a1518d87585ed7b6c747f27bd2651e65edfcca912cb03bee5'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  depends_on macos: '>= :sierra'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
