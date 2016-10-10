cask 'magicavoxel' do
  version '0.97.5'
  sha256 'dc11b8ed8302557cdb2a62bc4dcbd041b4f9d106d80de502cb098eef8935d404'

  # 23.98.147.40 was verified as official when first introduced to the cask
  url "http://23.98.147.40/uploads/MagicaVoxel-#{version}-win-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite "MagicaVoxel-#{version}"
end
