cask 'swifty' do
  version '0.4.9'
  sha256 '07dfdbdc513b1ab7e5ea8c7e92b04890e3564d12020e470d6b5507c9bf1ad0af'

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
