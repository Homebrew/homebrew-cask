cask 'clashx' do
  version '1.9.8.1'
  sha256 '1d55dd5a211dad7aa1fdc3ae2c2b3d0360c177fcd63b4485776f1c58b3f76bbe'

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast 'https://github.com/yichengchen/clashX/releases.atom'
  name 'ClashX'
  homepage 'https://github.com/yichengchen/clashX'

  auto_updates true

  app 'ClashX.app'

  zap trash: [
               '~/Library/Preferences/com.west2online.ClashX.plist',
               '~/Library/Logs/ClashX',
               '~/.config/clash/',
             ]
end
