cask 'kerio-connect-client' do
  version '9.2.5.9920'
  sha256 '5b8655db470ab4ab3016b09fa4db9b4d9213546050dc58b90e29432acf51f493'

  url "https://kerio-dc-releases.kerio.com/kerio-connect-client-darwin64-#{version}.dmg"
  name 'Kerio Connect'
  homepage 'http://www.kerio.com/'

  app 'Kerio Connect.app'
end
