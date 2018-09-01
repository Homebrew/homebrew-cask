cask 'orange' do
  version '3.15.0'
  sha256 '14d842e2e92d743a88526d01337426bedb3d1e256c6c42dc934b1c2a793c2d4f'

  url "http://orange.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
