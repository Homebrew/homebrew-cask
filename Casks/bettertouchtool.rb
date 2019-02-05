cask 'bettertouchtool' do
  version '2.710'
  sha256 '3e553400468a0c48448f867a5c885c5462d909255ddaddece2beecc70b88f36e'

  # bettertouchtool.net/releases was verified as official when first introduced to the cask
  url "https://bettertouchtool.net/releases/btt#{version}.zip"
  appcast 'https://bettertouchtool.net/releases/'

  name 'BetterTouchTool'
  homepage 'https://folivora.ai/'

  auto_updates true

  app 'BetterTouchTool.app'

  uninstall login_item: 'BetterTouchTool'

  zap trash: [
               '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
               '~/Library/Application Support/BetterTouchTool',
             ]
end
