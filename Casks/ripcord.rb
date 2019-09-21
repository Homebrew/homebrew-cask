cask 'ripcord' do
  version '0.4.17'
  sha256 'd72765c058a0a76f187ae18fc01e7f964071e6eb466a30670888f305681d57eb'

  url "https://cancel.fm/dl/Ripcord_Mac_#{version}.zip"
  appcast 'https://cancel.fm/ripcord/updates/v1'
  name 'Ripcord'
  homepage 'https://cancel.fm/ripcord/'

  depends_on macos: '>= :sierra'

  app 'Ripcord.app'

  zap trash: [
               '~/Library/Application Support/Ripcord',
               '~/Library/Preferences/com.cancelfm.Ripcord.plist',
               '~/Library/Saved Application State/com.cancelfm.Ripcord.savedState',
             ]
end
