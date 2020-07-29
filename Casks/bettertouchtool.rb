cask 'bettertouchtool' do
  version '3.389-1612'
  sha256 '2b47402d15843d361a504ab938689327335d6aceaeed0ebac4b421e5623a0fbc'

  # bettertouchtool.net/releases/ was verified as official when first introduced to the cask
  url "https://bettertouchtool.net/releases/btt#{version}.zip"
  appcast 'https://www.corecode.io/macupdater/appcasts/bettertouchtool.txt'
  name 'BetterTouchTool'
  homepage 'https://folivora.ai/'

  auto_updates true

  app 'BetterTouchTool.app'

  zap trash: [
               '~/Library/Preferences/com.hegenberg.BetterTouchTool.plist',
               '~/Library/Application Support/BetterTouchTool',
             ]
end
