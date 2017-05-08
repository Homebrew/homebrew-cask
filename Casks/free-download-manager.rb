cask 'free-download-manager' do
  version '5.1.27'
  sha256 '05c969ff67df393afec1b456005a5d8b52e7d14942bc0b1640ccc59a2ea4a759'

  url "http://files2.freedownloadmanager.org/#{version.major}/#{version.major_minor}-latest/fdm.dmg"
  name 'Free Download Manager'
  homepage 'http://www.freedownloadmanager.org/landing5.htm'

  app 'Free Download Manager.app'
end
