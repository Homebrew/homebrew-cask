cask 'magicavoxel' do
  version '0.99.3'
  sha256 'd7c09a0178d4fd8b6484eae479b2b8f2daf60b8a0b39ba418981846906924e49'

  # dropbox.com/s/abh4jkiopcbuzep was verified as official when first introduced to the cask
  url "https://www.dropbox.com/s/abh4jkiopcbuzep/MagicaVoxel-#{version}-alpha-macos.zip?dl=1"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'

  suite staged_path, target: 'MagicaVoxel'
end
