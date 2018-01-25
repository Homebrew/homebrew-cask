cask 'nucleo' do
  version '2.2.1'
  sha256 '9510617ad020b25a967c14addae7b15da533a35f89e7573bfac68e59366c5e59'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates',
          checkpoint: '44656517923ede804c1aa340c4f68fc72f35f9d983b47b552487e9c59566a5a6'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
