cask 'icq' do
  version '3.0.24905'
  sha256 '951508c853b820bc166391cf138d0f12f2433447a771be80e585c02d979a3f35'

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
