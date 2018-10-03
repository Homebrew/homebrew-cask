cask 'clipgrab' do
  version '3.7.1'
  sha256 '30f5ed8fee3f3dd002873a874b7f4fb25aaacb7b1b8a56c68eed5f2436a506c6'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
