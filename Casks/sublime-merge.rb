cask 'sublime-merge' do
  version '1119'
  sha256 'b52d8245707fe8339495f6c2d626b118662ba49b6293e9eba2d178c4c65872b7'

  # download.sublimetext.com was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  appcast 'https://www.sublimemerge.com/updates/stable_update_check'
  name 'Sublime Merge'
  homepage 'https://www.sublimemerge.com/'

  auto_updates true
  conflicts_with cask: 'sublime-merge-dev'

  app 'Sublime Merge.app'
  binary 'Sublime Merge.app/Contents/SharedSupport/bin/smerge'

  uninstall quit: 'com.sublimemerge'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*',
               '~/Library/Application Support/Sublime Merge',
               '~/Library/Caches/com.sublimemerge/',
               '~/Library/Preferences/com.sublimemerge.plist',
               '~/Library/Saved Application State/com.sublimemerge.savedState',
             ]
end
