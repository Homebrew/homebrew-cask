cask 'mp3gain-express' do
  version '2.3.2'
  sha256 'ae217c3a6e6106a8bb8dab91b2526b551bd395bc677164b2461f267b36b8ba99'

  url "https://projects.sappharad.com/mp3gain/mp3gain_mac#{version.no_dots}.zip"
  appcast 'https://projects.sappharad.com/mp3gain/updates.xml'
  name 'MP3Gain Express'
  homepage 'https://projects.sappharad.com/mp3gain/'

  app 'MP3Gain Express.app'
end
