cask 'swifty' do
  version '0.5.1'
  sha256 'b6e91ccac2a2759f929cf41a5842a8a03e294cf98aa2f3f88f5cee0ac30250eb'

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
