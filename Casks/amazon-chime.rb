cask 'amazon-chime' do
  version '4.6.5869'
  sha256 '915393cc60895f5e3f3a4badbcf4e55c16076ae64f9793985b9a8916dcbf1316'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: 'bc6607a3c09ed1439ef8e09e98341ea862e414324108c38006db728b6cd6864d'
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
