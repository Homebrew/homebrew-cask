cask 'gitkraken' do
  version '4.0.5'
  sha256 '210a3be1c38f6075dc5c46200c26b5aa8488fc98c938cd0b5b9457c241e926e6'

  url "https://release.gitkraken.com/darwin/GitKraken-v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES'
  name 'GitKraken'
  homepage 'https://www.gitkraken.com/'

  auto_updates true

  app 'GitKraken.app'

  zap trash: [
               '~/Library/Application Support/com.axosoft.gitkraken.ShipIt',
               '~/Library/Application Support/GitKraken',
               '~/Library/Caches/GitKraken',
               '~/Library/Caches/com.axosoft.gitkraken.ShipIt',
               '~/Library/Caches/com.axosoft.gitkraken',
               '~/Library/Preferences/com.axosoft.gitkraken.helper.plist',
               '~/Library/Preferences/com.axosoft.gitkraken.plist',
               '~/Library/Saved Application State/com.axosoft.gitkraken.savedState',
               '~/.gitkraken',
             ]
end
