cask 'magicavoxel' do
  version '0.97.2'
  sha256 '7dddec090f17158e92eeabe8bfe0ed7b1413dd95841acc03796601904345891b'

  # 23.98.147.40 was verified as official when first introduced to the cask
  url "http://23.98.147.40/uploads/MagicaVoxel-#{version}-win-mac.zip"
  name 'MagicaVoxel'
  homepage 'https://ephtracy.github.io/'
  license :gpl

  app "MagicaVoxel-#{version}/MagicaVoxel-mac.app"
end
