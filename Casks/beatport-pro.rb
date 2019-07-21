cask 'beatport-pro' do
  version '2.4.3_178'
  sha256 '821c791ab9bd01aff5082ed1ce317c25d36385953efbe9eb06fe75dc14980ea2'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast 'https://pro.beatport.com/mac/appcast.xml'
  name 'Beatport Pro'
  homepage 'https://www.beatport.com/'

  app 'Beatport Pro.app'
end
