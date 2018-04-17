cask 'snipaste' do
  version '1.16.2-Beta'
  sha256 '58ace40bbdd0a1193b729b4af2b445da02fb29ce0767494de615ba0da60a47f5'

  # bitbucket.org/liule/snipaste was verified as official when first introduced to the cask
  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-Mac-#{version}.tar.gz"
  name 'Snipaste'
  homepage 'https://www.snipaste.com/'

  auto_updates true

  app 'Snipaste.app'

  uninstall quit: 'com.Snipaste'

  zap trash: '~/Library/Preferences/com.Snipaste.plist'
end
