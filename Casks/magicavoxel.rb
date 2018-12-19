cask 'magicavoxel' do
  version '0.99.2-alpha'
  sha256 'b4e2587781512ca102dada015802d4f9269ff47eff5614c901ce795d83afb777'

  # 192.241.207.218/uploads was verified as official when first introduced to the cask
  url "http://192.241.207.218/uploads/MagicaVoxel-#{version}-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite staged_path, target: 'MagicaVoxel'
end
