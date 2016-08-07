cask 'audirvana-plus' do
  version '2.5.3'
  sha256 'a7581b3d13bad7ba5d7590b446221775c7085e20fed0188a76ba10c60e17c87f'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast 'https://audirvana.com/delivery/audirvanaplus2_appcast.xml',
          checkpoint: '0b388d211a8cba93df931399c07fd3b464fc7e5332c6e08b0959e102d62cf57a'
  name 'Audirvana Plus 2'
  homepage 'https://audirvana.com/'
  license :commercial

  app 'Audirvana Plus.app'
end
