cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.0.12'
  sha256 'd500c5e376a05df6896f92504961142b7721efb9e235232d39545c7a3c5b7507'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: '1a760708aa5754e898f23cbb2c232033d09d2a0e1df53852e4f2cf81acbf33c4'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= :mountain_lion'

  app 'iTerm.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl',
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/iTerm2',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Preferences/com.googlecode.iterm2.plist',
                '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
              ]
end
