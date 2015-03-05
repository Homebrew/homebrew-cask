cask :v1 => 'qlvideo' do
  version '1.83'
  sha256 'df4db7b2f43a365ee528a7cb5cc921a59b46950060708d2c97551be606aa58d5'

  url "https://github.com/Marginal/QLVideo/releases/download/rel-#{version.gsub('.', '')}/QLVideo_#{version.gsub('.', '')}.pkg"
  name 'QuickLook Video'
  homepage 'https://github.com/Marginal/QLVideo'
  license :gpl

  pkg "QLVideo_#{version.gsub('.', '')}.pkg"

  uninstall :pkgutil => 'uk.org.marginal.qlvideo'
end
