cask 'clipgrab' do
  version '3.8.6'
  sha256 '6517d9c5e32e6e3258b46d1aeb4fa7b82d540069357a7adc4ce5a2a6058e3699'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
