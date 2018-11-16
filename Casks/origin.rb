cask 'origin' do
  version '10.5.30.15625'
  sha256 'd679a1635957edcc677b4f00f9a6d3fb236b1af8d401306999085b3e1c8cfeab'

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
