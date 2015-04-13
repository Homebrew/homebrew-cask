cask :v1 => 'airserver' do
  version '5.2'
  sha256 '021cf849f121df9f6b91d181b917240a76b6f129ef4676d0b491d0bc54e4b06b'

  url "http://dl.airserver.com/mac/AirServer-#{version}.dmg"
  name 'AirServer'
  homepage 'http://www.airserver.com'
  license :commercial

  app 'AirServer.app'
end
