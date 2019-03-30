cask 'nucleo' do
  version '2.5.4'
  sha256 'a06d37b19fd6bef6d9e32121b1651251619c9341b5f1bed58384a6813e48d0c1'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
