cask 'beatport-pro' do
  version '2.4.4_183'
  sha256 'a4172ea91ce849ce4281e44db3d06ba6a3143d4fea6ff1ddbb29021764ded8e4'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast 'https://pro.beatport.com/mac/appcast.xml'
  name 'Beatport Pro'
  homepage 'https://www.beatport.com/'

  app 'Beatport Pro.app'
end
