cask 'hedgewars' do
  version '0.9.23'
  sha256 '2a5fbfa005ec6aeea172270397025c17a2c117224dd21db5214b8cbbeade411b'

  url "http://www.hedgewars.org/download/releases/Hedgewars-#{version}.dmg"
  appcast 'https://www.hedgewars.org/download/appcast.xml',
          checkpoint: 'b568efa383a1243786b557c0d85dc0b3612afebcd310c77d91b5ec3c288a3264'
  name 'Hedgewars'
  homepage 'https://hedgewars.org/'

  app 'Hedgewars.app'
end
