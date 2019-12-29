cask 'clashx' do
  version '1.17.0'
  sha256 '3089968e6c3342f3a2506fea97979c1531ac3014454bd5beba351f0fba4fd7a5'

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
