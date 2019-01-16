cask 'accessmenubarapps' do
  version '2.6.1'
  sha256 'fe8a08d721af4b9e5e71bb71f3b876169fecde8219b53c01938861c2781fb16c'

  url "http://www.ortisoft.de/resources/AccessMenuBarApps#{version}.zip"
  appcast 'http://www.ortisoft.de/accessmenubarapps/profileInfo.php'
  name 'AccessMenuBarApps'
  homepage 'http://www.ortisoft.de/accessmenubarapps/'

  app "AccessMenuBarApps#{version}/AccessMenuBarApps.app"

  uninstall quit: 'de.ortisoft.AccessMenuBarApps'

  zap trash: [
               '~/Library/Caches/de.ortisoft.AccessMenuBarApps',
               '~/Library/Preferences/de.ortisoft.AccessMenuBarApps.plist',
             ]
end
