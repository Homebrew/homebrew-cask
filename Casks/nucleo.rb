cask 'nucleo' do
  version '2.5.5'
  sha256 '2cbe0e752f87a5fef86b59a180e78ec249a710fba56eea7144f5e1dd6eab9e59'

  # nucleo-app-releases.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://nucleo-app-releases.s3.amazonaws.com/mac/Nucleo_#{version}.zip"
  appcast 'https://nucleoapp.com/updates'
  name 'Nucleo'
  homepage 'https://nucleoapp.com/'

  app 'Nucleo.app'
end
