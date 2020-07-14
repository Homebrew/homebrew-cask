cask 'icollections' do
  version '6.5.1'
  sha256 '730dff4fdfe2238a623d45c847e83bcd6ee2a39a45bac9dc14680210a24d0c41'

  url 'https://naarakstudio.com/download/iCollections.dmg'
  appcast 'https://naarakstudio.com/icollections/whats-new.pdf'
  name 'iCollections'
  homepage 'https://naarakstudio.com/icollections/'

  depends_on macos: '>= :sierra'

  app 'iCollections.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.naarak.collections.sfl2',
               '~/Library/Application Support/com.naarak.Collections',
               '~/Library/Preferences/com.naarak.Collections.plist',
             ]
end
