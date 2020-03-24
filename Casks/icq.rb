cask 'icq' do
  version '3.0.26438'
  sha256 'e0262fe6b93e3b21257c6b49d547ef057adca544e013f6248bea7a9a9b500098'

  # hb.bizmrg.com/icq-www was verified as official when first introduced to the cask
  url 'https://hb.bizmrg.com/icq-www/mac/x64/icq.dmg'
  appcast "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/version.xml"
  name 'ICQ'
  homepage 'https://icq.com/mac/en'

  app 'ICQ.app'

  zap trash: [
               '~/Library/Application Support/ICQ',
               '~/Library/Caches/com.icq.macicq',
               '~/Library/Preferences/com.icq.macicq.plist',
               '~/Library/Saved Application State/com.icq.macicq.savedState',
             ]
end
