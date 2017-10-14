cask 'clipgrab' do
  version '3.6.6'
  sha256 'e9d1afed9ee2cf047e7a8df3eeaa13ec7900c48dd98723a28a9bb4dfa10ad2d7'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap delete: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
