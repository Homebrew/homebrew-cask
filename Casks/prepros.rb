cask 'prepros' do
  version '6.2.0'
  sha256 'b4c2a7132369f445da57c519d8318d86fab43352da5028913251203d76534673'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '251ecfa574e1122fe514760c340e73d3f80329d406f97732152cee80e3673402'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
