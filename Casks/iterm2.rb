cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.5'
  sha256 '7159ce6c96fe5c61653a6d6a9a45facfe4a9abff5bfa063e361efd70f89fd769'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: '02bc714d270d449dab9c2c4955623654e8de8e9abfe3ad6460036b507b876331'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'iTerm.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.googlecode.iterm2.sfl*',
                '~/Library/Caches/com.googlecode.iterm2',
                '~/Library/Saved Application State/com.googlecode.iterm2.savedState',
              ],
      trash:  [
                '~/Library/Application Support/iTerm',
                '~/Library/Application Support/iTerm2',
                '~/Library/Preferences/com.googlecode.iterm2.plist',
              ]
end
