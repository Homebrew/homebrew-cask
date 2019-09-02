cask 'paw' do
  version '3.1.8'
  sha256 '1eca10c6b71d54f961f9942341a159cc172153c4634241971e6c49c117d8c452'

  url "https://cdn-builds.paw.cloud/paw/Paw-#{version}.zip"
  appcast 'https://paw.cloud/api/v2/updates/appcast'
  name 'Paw'
  homepage 'https://paw.cloud/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Paw.app'

  zap trash: [
               '~/Library/Application Scripts/com.luckymarmot.Paw',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.luckymarmot.paw.sfl*',
               '~/Library/Containers/com.luckymarmot.Paw',
               '~/Library/Preferences/com.luckymarmot.Paw.plist',
               '~/Library/Saved Application State/com.luckymarmot.Paw.savedState',
             ]
end
