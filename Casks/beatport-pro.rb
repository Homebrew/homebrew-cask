cask :v1 => 'beatport-pro' do
  version '2.2.2_163'
  sha256 '4f2803d53ce19720af93a97874590b6bad29b64b5bbb510d3a710f5e625f04f1'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.zip"
  name 'Beatport'
  name 'Beatport Pro'
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          :sha256 => 'ddf5d7f399cc4cb49f48161f5d0e9f9c45b9def00c5d4bbce99f80ef244ba26c'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
