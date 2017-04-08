cask 'amazon-chime' do
  version '4.1.5610'
  sha256 'beb283b10f25bb0ae03a50538a40018ab4c61de8cf57d82afdcbf402aa2c1522'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '8d248dddbb16c86767f89e80749fea0235664bc12e198b30888a5461be74763d'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
