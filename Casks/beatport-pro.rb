cask 'beatport-pro' do
  version '2.2.3_166'
  sha256 'f59fa20b15c02a659e0beef2951e794010b397e7ce0a54cf25148e4528ef4e26'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          :sha256 => '89b78dc74854f3acd6c8502da65d9bafe11780ef155e644c707e8a06f556dc66'
  name 'Beatport Pro'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
