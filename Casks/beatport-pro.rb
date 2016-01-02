cask 'beatport-pro' do
  version '2.2.3_166'
  sha256 'f59fa20b15c02a659e0beef2951e794010b397e7ce0a54cf25148e4528ef4e26'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  name 'Beatport'
  name 'Beatport Pro'
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          :sha256 => 'b855defa3a7f0add216a0568c6c8922857954e61786dcb30fce4c1b565ad5716'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
