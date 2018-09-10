cask 'clipgrab' do
  version '3.7.0'
  sha256 'f66ceb49650545efd7da99d0aed1319629847326a689724fc3862c70c5257234'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
