cask 'origin' do
  version '10.5.29.14153'
  sha256 '2d5adbc292c4a1947a50b47ddf547bbcf19e8ba450824ba99b49f0d6db08f363'

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
