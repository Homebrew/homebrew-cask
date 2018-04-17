cask 'prepros' do
  version '6.2.2'
  sha256 '103322a9bc12d4b3b274bde9fa1fb91b67fcc00b7b36ba3225dd515e93a36f03'

  # s3-us-west-2.amazonaws.com/prepros-io-releases was verified as official when first introduced to the cask
  url "https://s3-us-west-2.amazonaws.com/prepros-io-releases/stable/Prepros-Mac-#{version}.zip"
  appcast 'https://prepros.io/changelog',
          checkpoint: '2d0b72d112ea81cce8a2293e6c487886e227da150b9531f54bd24259263a89af'
  name 'Prepros'
  homepage 'https://prepros.io/'

  app 'Prepros.app'
end
