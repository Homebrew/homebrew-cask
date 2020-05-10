cask 'clashx' do
  version '1.20.0'
  sha256 '6bddd177bbc3ec5fb9ef056525953d43533dbffd61fca64084e83cc0f568b4d1'

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
