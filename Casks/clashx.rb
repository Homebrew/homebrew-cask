cask 'clashx' do
  version '1.20.3'
  sha256 '1641acf79d2987bf6144700276d95df4f6c9c0dd431cac45644c4cb246b0191d'

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast 'https://github.com/yichengchen/clashX/releases.atom'
  name 'ClashX'
  homepage 'https://github.com/yichengchen/clashX'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'ClashX.app'

  zap trash: [
               '~/Library/Preferences/com.west2online.ClashX.plist',
               '~/Library/Logs/ClashX',
               '~/.config/clash/',
             ]
end
