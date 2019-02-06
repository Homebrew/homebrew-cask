cask 'clipgrab' do
  version '3.8.0'
  sha256 '47bc3c0d46ba7f292c37a552366deea5567d244aa8f78c064ef104a496771d0c'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
