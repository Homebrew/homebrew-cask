cask 'magicavoxel' do
  version '0.97.1'
  sha256 'ba10f1ca04dd2c60f31c4cb39c60575d59c5a5984c7ab3ba0610e904513510ab'

  # 23.98.147.40 was verified as official when first introduced to the cask
  url "http://23.98.147.40/uploads/MagicaVoxel-#{version}-win-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'
  license :gpl

  app 'MagicaVoxel_mac.app'
end
