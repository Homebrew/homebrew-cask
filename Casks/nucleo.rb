cask 'nucleo' do
  version '2.1.4'
  sha256 'ad651aeb3203f590975884ceafbd8c985ec27b6096e89a481f0129176cd56701'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates',
          checkpoint: 'cc4fa5213a3131104cb2b71422c6ab434f7fe349f4ef2af526e25afc4354867f'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
