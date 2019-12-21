cask 'amazon-chime' do
  version '4.28.7255'
  sha256 'd43d2a6ac2c6dd8edae82e38c0579d71c51f249b01715395a815e263769f870f'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX.release-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  depends_on macos: '>= :el_capitan'

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
