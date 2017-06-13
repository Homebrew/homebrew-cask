cask 'loadmytracks' do
  version '1.4.7,099'
  sha256 '5dcc85fd51e89a3792f0aad093bbfbac036e5c0a82a5d758b8352e6905ecfff2'

  # cluetrust.com was verified as official when first introduced to the cask
  url "https://www.cluetrust.com/Downloads/LoadMyTracks_#{version.after_comma}.dmg"
  appcast 'https://www.cluetrust.com/AppCasts/LoadMyTracks.xml',
          checkpoint: '9f1b54bf491bc03b35b45499e4cf4c3599ae3bdc6363f5ce3d14f420bd7f84d7'
  name 'LoadMyTracks'
  homepage 'https://www.loadmytracks.com/'

  app 'LoadMyTracks.app'
end
