cask 'clipgrab' do
  version '3.8.1'
  sha256 '1c9664d6e19e3ec788b9fc080fb1115412b9a69cfe1c6bb8e0effbee87346a89'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
