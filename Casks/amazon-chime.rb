cask 'amazon-chime' do
  version '4.30.7368'
  sha256 '968e746254a0742119123944f182e05221b55dd9ea36d0561b97cb9ec698c0c5'

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
