cask 'lacona' do
  version '0.10.1'
  sha256 'acc5b681774f9be2c702094d0d87baaa2728aee54529f6a27c6571342f8e13d3'

  # lacona-download.firebaseapp.com was verified as official when first introduced to the cask
  url "https://lacona-download.firebaseapp.com/packages/#{version}/LaconaBeta.zip"
  appcast 'https://lacona-download.firebaseapp.com/appcast.xml',
          checkpoint: '448b88e5ad9cd58e9f4d8cf7c5b58b9ac26c06b83539f7740538e15bf3882ca2'
  name 'Lacona'
  homepage 'https://www.lacona.io/'

  auto_updates true

  app 'Lacona.app'

  postflight do
    suppress_move_to_applications
  end
end
