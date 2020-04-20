cask 'swifty' do
  version '0.4.5'
  sha256 '7c2acae4490b96b1c64fcecb23d3c39ebc8b5dd761508e635dc491db1bdaa93b'

  # github.com/swiftyapp/swifty/ was verified as official when first introduced to the cask
  url "https://github.com/swiftyapp/swifty/releases/download/v#{version}/Swifty-#{version}.dmg"
  appcast 'https://github.com/swiftyapp/swifty/releases.atom'
  name 'Swifty'
  homepage 'https://getswifty.pro/'

  auto_updates true

  app 'Swifty.app'

  zap trash: [
               '~/Library/Application Support/Swifty',
               '~/Library/Logs/Swifty',
               '~/Library/Preferences/com.electron.swifty.plist',
               '~/Library/Saved Application State/com.electron.swifty.savedState',
             ]
end
