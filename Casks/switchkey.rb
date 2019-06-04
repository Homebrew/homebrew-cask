cask 'switchkey' do
  version '1.1.1'
  sha256 '1286e2e066f4f211f8508dd5ff98679129cfea04fe267000a057e99a65def347'

  url "https://github.com/itsuhane/SwitchKey/releases/download/v#{version}/SwitchKey.zip"
  appcast 'https://github.com/itsuhane/SwitchKey/releases.atom'
  name 'SwitchKey'
  homepage 'https://github.com/itsuhane/SwitchKey'

  app 'SwitchKey.app'

  zap trash: '~/Library/Preferences/itsuhane.tools.SwitchKey.plist'
end
