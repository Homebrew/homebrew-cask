cask 'ripcord' do
  version '0.4.5'
  sha256 'bf19e2134d95642af541cee5db48e903d37100281bf7cf64e5415dfb924b1acb'

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
