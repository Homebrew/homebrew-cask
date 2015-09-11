cask :v1 => 'beatport-pro' do
  version '2.2.1_161'
  sha256 'f9a90e8c3d908dd8425b18a0eac9c72c54f02c456074d0551ea4bb83738fb100'

  url "https://pro.beatport.com/mac/#{version}/beatportpro_#{version}.dmg"
  name 'Beatport'
  name 'Beatport Pro'
  appcast 'https://pro.beatport.com/mac/appcast.xml',
          :sha256 => '0cc995f01751cb46ef98862a5aa8d3d04530c96f961900c48e418875090cc4cc'
  homepage 'https://pro.beatport.com/'
  license :closed

  app 'Beatport Pro.app'
end
