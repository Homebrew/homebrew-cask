cask :v1 => 'beatport-pro' do
  version '2.1.4_150'
  sha256 'b7e6e330d77d242a30783141aad8c9a9a9f9d1e67da3afe4cb8daefa6e5545d2'

  url "http://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  name 'Beatport'
  name 'Beatport Pro'
  appcast 'http://pro.beatport.com/mac/appcast.xml',
          :sha256 => '7723c49b5bfa4452c6322be95fb64763312e3c776c1775211fa042240b675317'
  homepage 'http://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
