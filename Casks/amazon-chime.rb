cask 'amazon-chime' do
  version '4.2.5666'
  sha256 'b599c7c2e7bb775632258b2e49226565ca2e0ad4036ff38a2e28985fedc72dc3'

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX-#{version}.dmg"
  appcast 'https://clients.chime.aws/mac/appcast',
          checkpoint: 'e2caa27bd7f8a51429b821eb381a58155dc411f60fe5efe5405be89b6d658898'
  name 'Amazon Chime'
  homepage 'https://chime.aws/'

  app 'Amazon Chime.app'
end
