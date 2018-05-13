cask 'paw' do
  version '3.1.7-3001007002'
  sha256 'c2ede505c1173cc0407e4c0a9f93469abae88d8170cd8b53ae93b23971b13b6f'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast',
          checkpoint: 'd68041584463d1be1ebba490d7bbf94573b23347e445fe728561799c6bb96c9d'
  name 'Paw'
  homepage 'https://paw.cloud/'

  app 'Paw.app'

  zap trash: [
               '~/Library/Application Scripts/com.luckymarmot.Paw',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl*',
               '~/Library/Containers/com.luckymarmot.Paw',
               '~/Library/Preferences/com.luckymarmot.Paw.plist',
               '~/Library/Saved Application State/com.luckymarmot.Paw.savedState',
             ]
end
