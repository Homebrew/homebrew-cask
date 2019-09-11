cask 'clipgrab' do
  version '3.8.4'
  sha256 '5c4bbfe93e754a61511fac96c2e3a5c01e6a06f6397af1d2e632bbaeb7e946ed'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
