cask 'magicavoxel' do
  version '0.98.2'
  sha256 'be65de92473a586e4a8392feac28e43506fa700ba25c660a0036ba7f8c25addd'

  # 192.241.207.218/uploads was verified as official when first introduced to the cask
  url "http://192.241.207.218/uploads/MagicaVoxel-#{version}-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite "MagicaVoxel-#{version}-mac"
end
