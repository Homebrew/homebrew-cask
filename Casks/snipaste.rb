cask 'snipaste' do
  version '1.16-beta2'
  sha256 'ff254bc86cbb593311d63cda913084ef49205e9f6f9baa8d5d05be8e0a322792'

  # bitbucket.org/liule/snipaste was verified as official when first introduced to the cask
  url "https://bitbucket.org/liule/snipaste/downloads/Snipaste-Mac-#{version}.tar.gz"
  name 'Snipaste'
  homepage 'https://www.snipaste.com/'

  auto_updates true

  app 'Snipaste.app'

  uninstall quit: 'com.Snipaste'

  zap trash: '~/Library/Preferences/com.Snipaste.plist'
end
