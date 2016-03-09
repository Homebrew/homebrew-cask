cask 'beatport-pro' do
  version '2.2.3_166'
  sha256 'f59fa20b15c02a659e0beef2951e794010b397e7ce0a54cf25148e4528ef4e26'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          checkpoint: '1584951c48596c8e919996d5b6098fe0370a2cb04af0093bcba37820dab0624e'
  name 'Beatport Pro'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
