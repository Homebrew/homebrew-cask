cask 'clashx' do
  version '1.20.4'
  sha256 'deb0ab3b8df928c058123dd935d063f238701803d691aba1ea5ac22963fab161'

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
