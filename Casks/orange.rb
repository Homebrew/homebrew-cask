cask 'orange' do
  version '3.3.10'
  sha256 '85dcb15da9d9f5f10c5bcb702fc98f64c02b1a497d3143cf8e2301874066c70b'

  url "http://orange.biolab.si/download/files/Orange#{version.major}-#{version}.dmg"
  name 'Orange'
  homepage 'https://orange.biolab.si/'

  app "Orange#{version.major}.app"
end
