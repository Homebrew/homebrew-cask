cask 'ripcord' do
  version '0.4.19'
  sha256 'beccbe857f5641e85ddcdeba3db690b2134f4bc5aaa3596b879f7345a2e429db'

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
