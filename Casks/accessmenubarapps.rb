cask 'accessmenubarapps' do
  version '2.6'
  sha256 'c9fc2f9537a589f138983d378cdb7dccd2aab749fe7a77db7781c8ac818e901e'

  url "http://www.ortisoft.de/resources/AccessMenuBarApps#{version}.dmg"
  appcast 'http://www.ortisoft.de/accessmenubarapps/profileInfo.php'
  name 'AccessMenuBarApps'
  homepage 'http://www.ortisoft.de/accessmenubarapps/'

  app 'AccessMenuBarApps.app'

  uninstall quit: 'de.ortisoft.AccessMenuBarApps'

  zap trash: [
               '~/Library/Caches/de.ortisoft.AccessMenuBarApps',
               '~/Library/Preferences/de.ortisoft.AccessMenuBarApps.plist',
             ]
end
