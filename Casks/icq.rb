cask 'icq' do
  version '3.0.27365'
  sha256 '501f29e1fa50a242282b4abce360a07eca0b88c7e0f65f0eebd6e92ee49b6053'

  # icq-www.hb.bizmrg.com was verified as official when first introduced to the cask
  url "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/icq.dmg"
  appcast "https://icq-www.hb.bizmrg.com/mac/x64/#{version}/version.xml"
  name 'ICQ'
  homepage 'https://icq.com/desktop'

  auto_updates true

  app 'ICQ.app'

  zap trash: [
               '~/Library/Application Support/ICQ',
               '~/Library/Caches/com.icq.macicq',
               '~/Library/Preferences/com.icq.macicq.plist',
               '~/Library/Saved Application State/com.icq.macicq.savedState',
             ]
end
