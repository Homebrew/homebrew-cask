cask 'icollections' do
  version '6.5.1'
  sha256 'c9a1bc21761af8edc1b82e97b14b18e2b9c64a5439e8fed4dfab1c07c0645aea'

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
