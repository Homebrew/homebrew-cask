cask '115browser' do
  version '8.7.1.7'
  sha256 '84bb02f2e7219f675effaac0886ff662ecc5564467274f78d321a0e8de7b8def'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  appcast 'https://appversion.115.com/1/web/1.0/api/chrome?callback=get_version'
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  app '115Browser.app'

  zap trash: [
               '~/Library/Application Support/115Browser',
               '~/Library/Caches/115Browser',
               '~/Library/Caches/org.115Browser.115Browser',
               '~/Library/Preferences/org.115Browser.115Browser.plist',
               '~/Library/Saved Application State/org.115Browser.115Browser.savedState',
             ]
end
