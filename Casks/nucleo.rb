cask 'nucleo' do
  version '2.4.2'
  sha256 'd3e3db16f7381f683141ee35ca320936ebbc9690402e84d7391832403d2244cc'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
