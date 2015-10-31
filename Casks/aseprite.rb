cask :v1 => 'aseprite' do
  version '1.1.0.1'
  sha256 '3d3bde4c64ea95865d78618c1f6665e42e4071bf84d3cf15bbcad21c27bf4eeb'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :gpl

  app 'aseprite.app'
end
