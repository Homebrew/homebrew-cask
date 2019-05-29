cask 'pphelper' do
  version '2.4.0'
  sha256 '2bcade81898c8c1d41c2877d906b94bd889178204c53cd85655d7219d30e55c6'

  url 'https://ghost.25pp.com/soft/pp_mac.dmg'
  appcast 'https://liveupdate.25pp.com/macpc/Appcast.xml'
  name 'pphelper'
  name 'pp助手'
  homepage 'https://pro.25pp.com/pp_mac_ios'

  app 'pp助手.app'

  zap trash: [
               '~/Library/Application Support/PPHelper',
               '~/Library/Caches/com.teiron.pphelper.mac',
               '~/Library/Preferences/com.teiron.pphelper.mac.plist',
               '~/Library/Saved Application State/com.teiron.pphelper.mac.savedState',
             ]
end
