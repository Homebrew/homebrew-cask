cask 'amazon-chime' do
  version '4.26.6995'
  sha256 'd3eba35214a67385b08d5852913bd9fbd0fda821d107dd11b0788960a3ab6169'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
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
