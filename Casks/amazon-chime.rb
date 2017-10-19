cask 'amazon-chime' do
  version '4.8.5921'
  sha256 'aabdbe8ce599c082ece67b6e11d1403fcb74b715c8406ad5ecd7a00d389c6d8e'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '3f47c425bd3dfd32455697e24bf64f374e19fc59572a74591b2696ff44db2802'
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
