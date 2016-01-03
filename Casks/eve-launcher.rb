cask 'eve-launcher' do
  version '992878'
  sha256 '5c9a4ef2caedfaf2f5c109b323727cf14c45576d51c343489de4e2dba32cb945'

  url "http://binaries.eveonline.com/EveLauncher-#{version}.dmg"
  name 'Eve Online'
  homepage 'https://www.eveonline.com/'
  license :commercial

  app 'EVE Launcher.app'

  zap :delete => [
                   '~/Library/Preferences/com.ccpgames.EVE.plist',
                   '~/Library/Application Support/EVE Online',
                   '~/Library/Application Support/CCP/EVE',
                 ]
end
