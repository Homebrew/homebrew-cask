cask 'amazon-chime' do
  version '4.30.7462'
  sha256 '46b1b912a1fc17d631b16c8f0e233ec76e738747b55b81f697b534469e027f2d'

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
