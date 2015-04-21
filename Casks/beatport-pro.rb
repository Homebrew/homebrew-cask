cask :v1 => 'beatport-pro' do
  version '2.1.4_150'
  sha256 'b7e6e330d77d242a30783141aad8c9a9a9f9d1e67da3afe4cb8daefa6e5545d2'

  url "http://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  name 'Beatport'
  name 'Beatport Pro'
  homepage 'http://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
