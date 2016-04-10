cask 'audiomate' do
  version '2.2.6'
  sha256 '056ec23c32409bb599b0f51042531b5c7ecbc4875a0279358e87266487be069f'

  # 9labs.io was verified as official when first introduced to the cask
  url "http://backend.9labs.io/download/audiomate?version=#{version}"
  appcast 'https://backend.9labs.io/appcast/audiomate',
          checkpoint: '2af94fde8ad6c95ad8d87ebb6c2d6b14dd375917958d774e07b39ecb37685b1e'
  name 'AudioMate'
  homepage 'https://audiomateapp.com/'
  license :mit

  app 'AudioMate.app'

  postflight do
    suppress_move_to_applications
  end
end
