cask '115browser' do
  version '8.4.0.19'
  sha256 '0097f09f4cbf0db887d9ccf47ec35bcebaedb0252cf56938785857015a20c207'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  appcast 'https://pc.115.com/#mac',
          checkpoint: 'e2ea2eb6965afff80577b6faf59e14b696a40db8a0e1a1c7caa14c3f689ed982'
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  depends_on macos: '>= :mountain_lion'

  app '115Browser.app'

  zap trash: [
               '~/Library/Application Support/115Browser',
               '~/Library/Caches/115Browser',
               '~/Library/Caches/org.115Browser.115Browser',
               '~/Library/Preferences/org.115Browser.115Browser.plist',
               '~/Library/Saved Application State/org.115Browser.115Browser.savedState',
             ]
end
