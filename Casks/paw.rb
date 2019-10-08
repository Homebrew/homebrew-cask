cask 'paw' do
  version '3.1.9'
  sha256 'a2d52e1052e0062f1d0301dc147dd7b7e10f18cd0bd613bbb98aeb3b48578f2b'

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
