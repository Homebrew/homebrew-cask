cask 'sublime-merge' do
  version '1065'
  sha256 'd4198d93b2c27b8197c5c7afa01e2a872b02dea8aea769d3027c3f3acd145ae9'

  # download.sublimetext.com was verified as official when first introduced to the cask
  url "https://download.sublimetext.com/sublime_merge_build_#{version}_mac.zip"
  name 'Sublime Merge'
  homepage 'https://www.sublimemerge.com/'

  auto_updates true

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
