cask 'magicavoxel' do
  version '0.98.1'
  sha256 'd0876dd7f6603b220e74aa93d30aeb1e76f05df66c647f139ce8bd96a0b301aa'

  # 23.98.147.40 was verified as official when first introduced to the cask
  url "http://23.98.147.40/uploads/MagicaVoxel-#{version}-win-mac-beta.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite "MagicaVoxel-#{version}"
end
