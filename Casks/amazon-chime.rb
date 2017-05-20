cask 'amazon-chime' do
  version '4.3.5702'
  sha256 'f4fc52bca5f93b7d7001073f8be2f592face2c7d5f64db4340e8d50d38a4362b'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: 'b5bf8bdec277f204331fb8734bfdcce4601f4bc43a160df6a7ce28fb352f4262'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
