cask 'clashx' do
  version '1.7.5'
  sha256 '3cea42ecadff2edd3c7f5511b0881fbff9a550d4a7a2099391719e7479c9d4b5'

  url "https://github.com/yichengchen/clashX/releases/download/#{version}/ClashX.dmg"
  appcast 'https://github.com/yichengchen/clashX/releases.atom'
  name 'ClashX'
  homepage 'https://github.com/yichengchen/clashX'

  auto_updates true

  app 'ClashX.app'

  zap trash: [
               '~/Library/Preferences/com.west2online.ClashX.plist',
               '~/Library/Logs/ClashX',
             ]
end
