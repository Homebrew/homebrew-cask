cask '115browser' do
  version '8.6.5.41'
  sha256 'd3fa571827326a0cf08ae32fc0782142502f3dc9a9b85419624137a1a9488ff6'

  url "https://down.115.com/client/mac/115br_v#{version}.dmg"
  appcast 'https://pc.115.com/#mac'
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
