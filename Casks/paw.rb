cask 'paw' do
  version '3.1.10'
  sha256 'bbf45359fd48bd4700d834ce9155ee679f88a450e2b857fc879247d4689d877d'

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
