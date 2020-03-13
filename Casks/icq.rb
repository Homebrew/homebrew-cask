cask 'icq' do
  version '3.0.26400'
  sha256 '71427996fffbbc8a6f6b9d21296c4b242c4088706209d0deff2eccd9bc2273be'

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
