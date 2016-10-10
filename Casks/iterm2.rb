cask 'iterm2' do
  # note: "2" is not a version number, but an intrinsic part of the product name
  version '3.0.10'
  sha256 '434f52c5d554005a94e1f471018d1480a029155205644dadd65377f5eeff3624'

  url "https://iterm2.com/downloads/stable/iTerm2-#{version.dots_to_underscores}.zip"
  appcast 'https://iterm2.com/appcasts/final.xml',
          checkpoint: 'd39bacce51180f1949aa3e1d75fd9149b03d08c6bd0aa9593221c2457b677cd8'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'

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
