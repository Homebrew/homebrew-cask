cask 'clashx' do
  version '1.8.1'
  sha256 '1bd3a841dd4a3d3cdf35a8d3f66f84d29345bc2a7d34032bfa608912f133cc46'

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
