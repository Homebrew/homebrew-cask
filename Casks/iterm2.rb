cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.0.9'
  sha256 '4e4b9decbc2327c795fa114156213d95482a882eab188825dfeb8df1ed13b9ab'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: '79f372423ae6b3095bffb553bb5012ecf81643db5e8fa992f600670ad0f97052'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  auto_updates true
  depends_on macos: '>= :mountain_lion'
  depends_on arch: :intel

  app 'iTerm.app'

  zap delete: [
                '~/Library/Preferences/com.googlecode.iterm2.plist',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl',
              ]
end
