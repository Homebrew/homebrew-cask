cask 'amazon-chime' do
  version '4.12.6094'
  sha256 'a384ac895ecac4e54e918fddee6f0a45fd5317e86762e633759c526039063b99'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '96c3655a818cc0d2db436e217103e45f460601946d38b286e0d840586b20d926'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'

  zap trash: [
               '~/Library/Application Support/Amazon Chime',
               '~/Library/Application Support/com.amazon.Amazon-Chime',
               '~/Library/Caches/com.amazon.Amazon-Chime',
               '~/Library/Logs/Amazon Chime',
               '~/Library/Preferences/com.amazon.Amazon-Chime.plist',
               '~/Library/WebKit/com.amazon.Amazon-Chime',
             ]
end
