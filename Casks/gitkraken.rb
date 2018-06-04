cask 'gitkraken' do
  version '3.6.3'
  sha256 '2d4f7e661722a982f357541e864ebe16868228588f7b7f55cf48598c33995cee'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://support.gitkraken.com/release-notes/current',
          checkpoint: 'c119e916abcecb343de75a0255d6ec2c290305e2d07cdeab96b027fa91086694'
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
