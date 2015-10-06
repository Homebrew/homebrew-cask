cask :v1 => 'beatport-pro' do
  version '2.2.1_161'
  sha256 'f9a90e8c3d908dd8425b18a0eac9c72c54f02c456074d0551ea4bb83738fb100'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  name 'Beatport'
  name 'Beatport Pro'
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          :sha256 => 'ddf5d7f399cc4cb49f48161f5d0e9f9c45b9def00c5d4bbce99f80ef244ba26c'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
