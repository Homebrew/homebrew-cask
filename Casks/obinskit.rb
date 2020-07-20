cask 'obinskit' do
  version '1.1.4'
  sha256 '7d5cb712e2fb259520de220833f8250d32fd90418f7aa193ec3ac7028e4c31bd'

  url "http://releases.obins.net/occ/darwin/x64/ObinsKit_#{version}_x64.dmg"
  appcast 'http://releases.obins.net/occ/darwin/x64/latest-mac.yml'
  name 'Obinskit'
  homepage 'http://en.obins.net/obinskit'

  app 'Obinskit.app'

  zap trash: [
               '~/Library/Application Support/ObinsKit',
               '~/Library/Logs/ObinsKit',
               '~/Library/Preferences/net.obins.obinslab-starter.plist',
               '~/Library/Saved Application State/net.obins.obinslab-starter.savedState',
             ]
end
