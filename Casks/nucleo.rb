cask 'nucleo' do
  version '2.5.5'
  sha256 '2cbe0e752f87a5fef86b59a180e78ec249a710fba56eea7144f5e1dd6eab9e59'

  # s3-us-west-2.amazonaws.com/nucleo-app-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/nucleo-app-releases/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
