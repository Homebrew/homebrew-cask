cask 'mp3gain-express' do
  version '2.1'
  sha256 'bde9b129a87525a7e39e11176bdb9045346a822e2b18539a72446de53f9bb472'

  url "http://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'http://projects.sappharad.com/mp3gain/updates.xml',
          checkpoint: '06cd08f6acd046ee5ed5a7370f39e8285ee3c759c0ee4b00a94348525e7c2ae9'
  name 'MP3Gain Express'
  homepage 'http://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
