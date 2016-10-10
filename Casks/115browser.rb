cask '115browser' do
  version '7.2.3.5'
  sha256 '7f87490e0a4929bf6bbabf861540cfec0746e809f9b96fce7202146149ec9445'

  url "http://down.115.com/client/mac/115br_v#{version}.dmg"
  name '115Browser'
  name '115浏览器'
  homepage 'https://pc.115.com/'

  app '115Browser.app'

  zap delete: [
                '~/Library/Application Support/115Browser',
                '~/Library/Caches/115Browser',
                '~/Library/Preferences/com.115.115browser.plist',
                '~/Library/Saved Application State/com.115.115browser.savedState',
              ]
end
