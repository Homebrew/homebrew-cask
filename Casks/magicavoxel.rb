cask 'magicavoxel' do
  version '0.99.2-alpha'
  sha256 'b83bbeebbcfb5f045b40d27266a805ec38536b1e54310db6592c2e33ce500089'

  # 192.241.207.218/uploads was verified as official when first introduced to the cask
  url "http://192.241.207.218/uploads/MagicaVoxel-#{version}-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite "MagicaVoxel-#{version}-mac"
end
