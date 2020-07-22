cask 'sublime-merge' do
  version '2025'
  sha256 'b163f65c62c46c059f3750beff1c807efad6126dca682a97515ef0f10af8d728'

  # download.sublimetext.com/ was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  appcast 'https://www.sublimemerge.com/updates/stable_update_check'
  name 'Sublime Merge'
  homepage 'https://www.sublimemerge.com/'

  auto_updates true
  conflicts_with cask: 'sublime-merge-dev'

  app 'Sublime Merge.app'
  binary "#{appdir}/Sublime Merge.app/Contents/SharedSupport/bin/smerge"

  uninstall quit: 'com.sublimemerge'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.sublimemerge.sfl*',
               '~/Library/Application Support/Sublime Merge',
               '~/Library/Caches/com.sublimemerge/',
               '~/Library/Preferences/com.sublimemerge.plist',
               '~/Library/Saved Application State/com.sublimemerge.savedState',
             ]
end
