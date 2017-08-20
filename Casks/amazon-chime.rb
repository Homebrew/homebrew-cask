cask 'amazon-chime' do
  version '4.6.5852'
  sha256 'c1e5eb66088af67ea31d1437b9de606d7a7ece0da1d04bef44b4534e5c102c72'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: 'dcf0321664eb13c21e40e60e0eb6f0631d313b34f2bfe8adb7bef11ff8495d8b'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'

  zap delete: [
                '~/Library/Caches/com.amazon.Amazon-Chime',
                '~/Library/Logs/Amazon Chime',
                '~/Library/WebKit/com.amazon.Amazon-Chime',
              ],
      trash:  [
                '~/Library/Application Support/Amazon Chime',
                '~/Library/Application Support/com.amazon.Amazon-Chime',
                '~/Library/Preferences/com.amazon.Amazon-Chime.plist',
              ]
end
