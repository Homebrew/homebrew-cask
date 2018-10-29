cask 'mp3gain-express' do
  version '2.2'
  sha256 '261b3a0de62a3fd1b688a9ba7c01964a8ebff32f872105fe05a8eb02b1249a80'

  url "https://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'https://projects.sappharad.com/mp3gain/updates.xml'
  name 'MP3Gain Express'
  homepage 'https://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
