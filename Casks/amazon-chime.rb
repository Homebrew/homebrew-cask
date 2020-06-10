cask 'amazon-chime' do
  version '4.31.7690'
  sha256 'a713b9009fdeaae22b5b4f16bd0c4cd608788d890505c23ccf0d19cdb8625e24'

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
