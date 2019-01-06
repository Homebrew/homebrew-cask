cask '115browser' do
  version '8.6.5.31'
  sha256 '8af0ce66b49eda99ff5bec26477cb8d44628caa186ea5c54c1146d1e2b1849ed'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  name '115Browser'
  name '115浏览器'
  homepage 'http://pc.115.com/'

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
