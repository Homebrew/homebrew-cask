cask 'amazon-chime' do
  version '4.10.6026'
  sha256 '79ffad6b5ea289570abef1216c20a5239e210bdca9e6e0f6bd5602616c117c4d'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '474a96cd0317299bf294ced2e9dd1caf5bf4c171ab970983bfb1fbff95fdd610'
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
