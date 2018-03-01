cask 'prepros' do
  version '6.1.1'
  sha256 '65cdd13b1409f5c031e74af691ff80a980ff73b1e6d7bf6b845adcb47a9ff9a1'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '0f7f5ae7cd7052b98ed786e8896a6fbded2740b6fab066257a3567ac3e58b5e8'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
