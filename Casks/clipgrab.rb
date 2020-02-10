cask 'clipgrab' do
  version '3.8.10'
  sha256 '2a5af505c4a061938ce8b380fcbc61abf3935265a14e6c2f191cd6c2c9c3428f'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  depends_on macos: '>= :sierra'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
