cask 'magicavoxel' do
  version '0.97'
  sha256 '2dc3f5e445349575281f8c0d3ae584268fa5923bf27eabc0a4c33bfa23dfa026'

  # 23.98.147.40 is the official download host per the vendor homepage
  url "http://23.98.147.40/uploads/MagicaVoxel-#{version}-win-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'
  license :gpl

  app 'MagicaVoxel_mac.app'
end
