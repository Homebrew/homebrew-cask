cask 'mp3gain-express' do
  version '2.1'
  sha256 'bde9b129a87525a7e39e11176bdb9045346a822e2b18539a72446de53f9bb472'

  url "http://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'http://projects.sappharad.com/mp3gain/updates.xml'
  name 'MP3Gain Express'
  homepage 'http://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
