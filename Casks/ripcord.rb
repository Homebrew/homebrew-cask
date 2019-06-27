cask 'ripcord' do
  version '0.4.6'
  sha256 '00ce1958c79b1f635c13138685cdb4ad1dc43749a5be8e2da454aca741d39621'

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
