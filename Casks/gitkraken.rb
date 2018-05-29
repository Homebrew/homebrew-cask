cask 'gitkraken' do
  version '3.6.2'
  sha256 'ed946ab5d7d2cc5fe6a7605cbb2b27e0ba8ff5c26b2958326f890180b5964a37'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://support.gitkraken.com/release-notes/current',
          checkpoint: '322f0c5f3566f8c9e066e4770ea454350afbc16a7c68b814a6133712d2927151'
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
