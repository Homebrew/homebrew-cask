cask 'amazon-chime' do
  version '4.2.5645'
  sha256 '108dcc7b1985e876063cacc5f54b19acaed1bff2d963012c32c3379cea0ecdbe'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: '510066f690bc4fc0559ed771cd166cb9c2c3a49d7e894ecbb42c863030fbe644'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
