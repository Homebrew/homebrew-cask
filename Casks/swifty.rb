cask 'swifty' do
  version '0.4.7'
  sha256 'b72e09dad1ed345832b029180a74848469d832f22aa30493415292ba0e874909'

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
