cask 'share' do
  version '1.0.0'
  sha256 '3a2eea9b7e87e80ecf0ffeee9e54b83af0729ec42dcf0a875e81b8ef144dc628'

  url 'https://spideroak.com/release/share'
  name 'SpiderOak Share'
  homepage 'https://spideroak.com/spideroak-share/'

  depends_on macos: '>= :sierra'

  app 'Share.app'

  zap trash: [
               '~/Library/Logs/Share',
               '~/Library/Preferences/com.spideroak.share.plist',
               '~/Library/Saved Application State/com.spideroak.share.savedState',
             ]
end
