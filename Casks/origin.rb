cask 'origin' do
  version '10.5.26.8487'
  sha256 '4d62410056a86e7c69bee46ec1a7686a81beae6cee270b9fca32d828132ce052'

  # origin-a.akamaihd.net was verified as official when first introduced to the cask
  url 'https://origin-a.akamaihd.net/Origin-Client-Download/origin/mac/live/Origin.dmg'
  appcast 'https://api1.origin.com/autopatch/2/upgradeFrom/10.5.24.5022/en_US/PROD?platform=MAC&osVersion=10.13.0'
  name 'Origin'
  homepage 'https://www.origin.com/'

  app 'Origin.app'

  zap trash: [
               '~/Library/Application Support/Origin',
               '~/Library/Saved Application State/com.ea.Origin.savedState',
               '~/Library/LaunchAgents/com.ea.origin.WebHelper.plist',
               '~/Library/Caches/com.ea.Origin',
               '~/Library/Caches/Origin',
             ]
end
