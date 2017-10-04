cask 'duet' do
  version '1.6.5.5'
  sha256 'bc259f289403c091b5fb8efeafc69af288d0c048c82283b36b6ac3bb3a2cacc0'

  # storage.googleapis.com/duetdisplay/ was verified as official when first introduced to the cask
  url 'https://storage.googleapis.com/duetdisplay/duet-1-6-5-5.zip'
  appcast 'https://s3-us-west-1.amazonaws.com/duetmac/1_6_5/DuetDisplayAppcast.xml',
          checkpoint: '97af669d33ad9353ddbb7318681c48d8987fc8f3ce032af3d5f3815080f929c0'
  name 'Duet'
  homepage 'https://www.duetdisplay.com/'

  auto_updates true

  app 'duet.app'

  uninstall kext: 'com.karios.driver.DuetDisplay'
end
