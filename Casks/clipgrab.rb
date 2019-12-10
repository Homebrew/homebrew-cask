cask 'clipgrab' do
  version '3.8.7'
  sha256 '0242adfba5ec0d708dcc55675c1172a783133172b54e80f42aaa0aae9038d6fd'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  depends_on macos: '>= :sierra'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
