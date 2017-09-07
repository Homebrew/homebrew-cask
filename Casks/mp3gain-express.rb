cask 'mp3gain-express' do
  version '2.0.1'
  sha256 'bc949b6e1dcf804782fc95b4e6991a98e041a36fcec54b6a297fea9d4c41651c'

  url "http://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'http://projects.sappharad.com/mp3gain/updates.xml',
          checkpoint: '96fdeecd2fc58bdc4b2428c4f193e2f6edebf4a7b888c793e105cd08ef946ddd'
  name 'MP3Gain Express'
  homepage 'http://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
