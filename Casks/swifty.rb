cask 'swifty' do
  version '0.4.8'
  sha256 '04e38a960209951334ad45e22883c48fb398d5e8b6c675c1c07e932ff89bb6d8'

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
