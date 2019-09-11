cask 'mp3gain-express' do
  version '2.3'
  sha256 '6694a128e418cfa59e77fb3a302349b233bf308bcc92410b14da4d9d82b0fe34'

  url "https://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'https://projects.sappharad.com/mp3gain/updates.xml'
  name 'MP3Gain Express'
  homepage 'https://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
