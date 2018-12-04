cask 'clashx' do
  version '1.7.1'
  sha256 'e053e8918dcdb5bea2c24b5ce808083f604c90b9224540ceee357291ff7a3ed3'

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
