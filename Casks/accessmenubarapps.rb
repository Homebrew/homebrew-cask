cask 'accessmenubarapps' do
  version '2.4'
  sha256 '1065fbb4ca009758d4f303ed2106bd82a5ae21233b478f50fea3ddaa318473ce'

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
