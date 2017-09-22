cask 'gitkraken' do
  version '3.0.1'
  sha256 '5d1f75802de4b8d114bb0afdd2ef6313c3284baac56caaf051baa52d8c4f0fc2'

  url "https://release.gitkraken.com/darwin/v#{version}.zip"
  appcast 'https://release.gitkraken.com/darwin/RELEASES',
          checkpoint: '2b562dc434dd377eb56956ccdf183d196a47577daf2317bcf1520d012f3ab3a8'
  name 'GitKraken'
  homepage 'https://www.gitkraken.com/'

  auto_updates true

  app 'GitKraken.app'

  zap delete: [
                '~/Library/Caches/GitKraken',
                '~/Library/Caches/com.axosoft.gitkraken.ShipIt',
                '~/Library/Caches/com.axosoft.gitkraken',
                '~/Library/Saved Application State/com.axosoft.gitkraken.savedState',
              ],
      trash:  [
                '~/Library/Application Support/com.axosoft.gitkraken.ShipIt',
                '~/Library/Application Support/GitKraken',
                '~/Library/Preferences/com.axosoft.gitkraken.helper.plist',
                '~/Library/Preferences/com.axosoft.gitkraken.plist',
                '~/.gitkraken',
              ]
end
