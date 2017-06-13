cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.0.15'
  sha256 '90e6f2bd3eb2d245f4ab2c9f856c627c8a1536bac024fb3989db417bc3147565'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: '2de51fc64c500b1bf478d848f7fb31c93c27781c1573568e6298de237eca376f'
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
