cask 'amazon-chime' do
  version '4.7.5885'
  sha256 '840ae712f711bb15afe6925ca2781252400448b2097bb8e6ebdb128ad11906fa'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '59db08b9c0e458c72419f79790da24b1c9d09ab2e54da6983f10dd536b94f825'
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
