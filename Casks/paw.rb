cask 'paw' do
  version '3.1.9'
  sha256 '2681dbcb29ecda32085357e10f6e19d82b6c52905845e30274b0ad38e684cb05'

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
