cask 'remembear' do
  version '1.0.5'
  sha256 '5f69738acff0c843df47ad9a8472ca4c17c68c5e215598c61ba52990b142fc25'

  # s3.amazonaws.com/remembear was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/remembear/app/release/downloads/macOS/RememBear-#{version}.zip"
  appcast 'https://s3.amazonaws.com/remembear/app/release/downloads/macOS/appcast.xml'
  name 'RememBear'
  homepage 'https://www.remembear.com/'

  app 'RememBear.app'
end
