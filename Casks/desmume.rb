cask :v1 => 'desmume' do
  version '0.9.10'
  sha256 '5124a3ea2c64e55bf6b31bb8eb3408d3157e3fa739021dba16e39801388fbb2d'

  url "https://downloads.sourceforge.net/sourceforge/desmume/desmume-#{version}-mac.dmg"
  homepage 'http://www.desmume.org'
  license :oss

  app 'DeSmuME.app'
end
