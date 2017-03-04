cask 'prepros' do
  version '6.0.5'
  sha256 '96814e1fc300dbcf24a09b288558a1113299bb7f78e5cc2c71367d2ad770ea16'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: 'd8f662018c1f19ebb0f5debae948353c5ee76062f08f7db853a8b3f387235bad'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
