cask :v1 => 'beatport-pro' do
  version '2.1.6_155'
  sha256 '21581878a33921082167ba4eaddf031edf5c0b30b36928412c844d8c7572cf63'

  url "http://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  name 'Beatport'
  name 'Beatport Pro'
  appcast 'http://pro.beatport.com/mac/appcast.xml',
          :sha256 => '7723c49b5bfa4452c6322be95fb64763312e3c776c1775211fa042240b675317'
  homepage 'http://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
