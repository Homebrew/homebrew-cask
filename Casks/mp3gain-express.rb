cask 'mp3gain-express' do
  version '2.3.1'
  sha256 '325efe7fc36480540ce963d480ce5bc04c1c12da6efb7c47e3fb07134fb0c812'

  url "https://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'https://projects.sappharad.com/mp3gain/updates.xml'
  name 'MP3Gain Express'
  homepage 'https://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
