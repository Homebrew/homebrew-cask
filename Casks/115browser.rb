cask '115browser' do
  version '9.0.0.48'
  sha256 '6c6fa65cda04ec781d43dacdf8cc391610d6340d898beaea27db69ef32af5b8b'

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
