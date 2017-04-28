cask 'audiomate' do
  version '2.2.6'
  sha256 '1be327d0d98d4884ccb9077f60ac9a6ff8cd10df3c3841fc85fde6866462a43e'

  # 9labs.io was verified as official when first introduced to the cask
  url "http://backend.9labs.io/download/audiomate?version=#{version}"
  appcast 'https://backend.9labs.io/appcast/audiomate',
          checkpoint: '3bd02b90a41fc54116f85a27c869cf3b8c07042b0b7bcb2fea9d127b5578b15d'
  name 'AudioMate'
  homepage 'https://audiomateapp.com/'

  app 'AudioMate.app'

  postflight do
    suppress_move_to_applications
  end
end
