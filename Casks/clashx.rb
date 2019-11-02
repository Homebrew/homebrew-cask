cask 'clashx' do
  version '1.16.6'
  sha256 '4fcf819f049867c9dc46eeff94cd63bf91dce92ee69d6206faaf0072da05f909'

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
