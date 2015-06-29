cask :v1 => 'beatport-pro' do
  version '2.1.6_155'
  sha256 '21581878a33921082167ba4eaddf031edf5c0b30b36928412c844d8c7572cf63'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  name 'Beatport'
  name 'Beatport Pro'
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          :sha256 => 'c20601420d6fc2935de514d8b31ec06399d2d52861f5d942fce00d9c6b1ee280'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
