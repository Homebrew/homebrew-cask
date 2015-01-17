cask :v1 => 'aseprite' do
  version '1.0.8'
  sha256 '8c1bd4523861549ff2d398f205bbdd05d8a21633f83380ea2c596ccad0727513'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  name 'Aseprite'
  homepage 'http://www.aseprite.org'
  license :oss

  app 'aseprite.app'
end
