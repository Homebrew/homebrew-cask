cask 'nucleo' do
  version '2.0.5'
  sha256 '0a8a26891d938f9406e71126407e7d277a1dcd6429aff9d842cd6a4c390f5d91'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates',
          checkpoint: '5182b46d00306264b2047e1f207c2a22c5226cc20e8d122bde8bd6bb018ade31'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
