cask 'clashx' do
  version '1.6.7'
  sha256 '23c22d0fe856e19c758dfb5859a03b84f8d8373f7a6436918c08a7a61aa3a7ee'

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
