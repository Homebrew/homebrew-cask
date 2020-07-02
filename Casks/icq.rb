cask 'icq' do
  version '3.0.27953'
  sha256 '1ee4689892e8f0d29d812662de9db26bb5a06386d9fa4a7d193ca42e16eed314'

  # icq-www.hb.bizmrg.com/ was verified as official when first introduced to the cask
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
