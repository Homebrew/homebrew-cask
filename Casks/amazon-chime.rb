cask 'amazon-chime' do
  version '4.13.6123'
  sha256 'e26bab9d4e4a56fc16425cb76ae0338faa28378e8ede05990d10c0194983f937'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '6ef4eb2d6e1e083009387f61f926528baf867a48b1b27fb2935c8350cccb4b85'
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
