cask 'icollections' do
  version '6.5.1'
  sha256 '469389ed85bd213c669d5488626d245d3d00843e8910bccdcac63223ba34675a'

  url 'https://naarakstudio.com/download/iCollections.dmg'
  appcast 'https://naarakstudio.com/download/icollections/update.ver',
          must_contain: version.no_dots
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
