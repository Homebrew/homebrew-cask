cask 'clipgrab' do
  version '3.8.12'
  sha256 'd1a93e023a1dc726909d5ebcf6816fc14baaf18b6758eef6441d5d7932875c59'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  depends_on macos: '>= :sierra'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
