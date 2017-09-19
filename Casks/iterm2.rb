cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.1.0'
  sha256 '2837aced993add874a5972fa36a58ead2fa1e348da63480192ea6d52f7bed5eb'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: 'aac27a5ee526e39b3143265b90f3aeddb76d91076b33c16eb4d03ac4ede1df06'
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
