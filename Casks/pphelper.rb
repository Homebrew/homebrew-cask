cask 'pphelper' do
  version '2.3.7'
  sha256 '214366e0679c2df2bd5db78cf289eba9a099a4582b3f7c9882b29ac34eee24cd'

  url 'https://ghost.25pp.com/soft/pp_mac.dmg'
  appcast 'https://liveupdate.25pp.com/macpc/Appcast.xml'
  name 'pphelper'
  name 'pp助手'
  homepage 'https://pro.25pp.com/pp_mac_ios'

  depends_on macos: '>= :lion'

  app 'pp助手.app'

  zap trash: [
               '~/Library/Application Support/PPHelper',
               '~/Library/Caches/com.teiron.pphelper.mac',
               '~/Library/Preferences/com.teiron.pphelper.mac.plist',
               '~/Library/Saved Application State/com.teiron.pphelper.mac.savedState',
             ]
end
