cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.3.3'
  sha256 'be7ee93b73e759a7e14dd5587826c4703df2e0f86df0c7015f5a7e98318abcd9'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'iTerm.app'

  zap trash: [
               '~/Library/Application Support/iTerm',
               '~/Library/Application Support/iTerm2',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*',
               '~/Library/Caches/com.googlecode.iterm2',
               '~/Library/Preferences/com.googlecode.iterm2.plist',
               '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
             ]
end
