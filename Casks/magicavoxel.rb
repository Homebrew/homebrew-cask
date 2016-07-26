cask 'magicavoxel' do
  version '0.97.4'
  sha256 'a1c18356b2de57bcf99b356a5061c4903560956fd3a42ae4843730209f7799d9'

  # 23.98.147.40 was verified as official when first introduced to the cask
  url "http://23.98.147.40/uploads/MagicaVoxel-#{version}-win-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'
  license :gpl

  suite "MagicaVoxel-#{version}"
end
