cask 'amazon-chime' do
  version '4.1.5587'
  sha256 '37810f6f916de99f1bc0360b9bad1653791c95eac65e1ef9147b761d14649710'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '18c956728b1d132d662d88c853f636b0f695763db5b57020f21199fa5be75197'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
