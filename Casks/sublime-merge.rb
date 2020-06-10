cask 'sublime-merge' do
  version '2020'
  sha256 '830ab953c12117d4dec57b22f45ef5797a9d076e3b23d8258d51144a7a5cd482'

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
