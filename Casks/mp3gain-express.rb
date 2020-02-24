cask 'mp3gain-express' do
  version '2.3.3'
  sha256 'c96da91165873e4adce960aac50bd78f787c0d8c482fe08829a13f3362e21fd3'

  url "https://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'https://projects.sappharad.com/mp3gain/updates.xml'
  name 'MP3Gain Express'
  homepage 'https://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
