cask '115browser' do
  version '12.0.0.4'
  sha256 'd287e072b6a419606e67e4c19747b95918b0c2e578cb6e465edaa5c9083276c1'

  url "https://down.115.com/client/mac/115pc_#{version}.dmg"
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
