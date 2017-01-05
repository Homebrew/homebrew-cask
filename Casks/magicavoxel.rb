cask 'magicavoxel' do
  version '0.98'
  sha256 '8fb7dc065ede34fa64203faf6da8bd9c54d65950177e0601225880d94010f83d'

  # 23.98.147.40 was verified as official when first introduced to the cask
  url "http://23.98.147.40/uploads/MagicaVoxel-#{version}-win-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite "MagicaVoxel-#{version}"
end
