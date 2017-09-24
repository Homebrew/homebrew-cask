cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.2'
  sha256 '720eccece544ae8765f91c4c0348bb2819e47a2b794ce0adabc14934c00fee38'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: '82460c7319416475f17022188b53561bd021f006f3a8aef9cf156f9b9806a836'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'iTerm.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
              ],
      trash:  [
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/iTerm2',
                '~/Library/Preferences/com.googlecode.iterm2.plist',
              ]
end
