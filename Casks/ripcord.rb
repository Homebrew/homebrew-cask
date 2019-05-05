cask 'ripcord' do
  version '0.4.3'
  sha256 'c7159853bd5befdc49faf66744d785177bdac68c2e6a57b66e1441b13bfb2c0a'

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
