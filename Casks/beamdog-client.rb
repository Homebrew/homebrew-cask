cask 'beamdog-client' do
  version '2.1.3'
  sha256 'bdf72248c9b0a90bee5a6fe76b0c44824e2ddceecfad93ef069f41de5b0e544f'

  url "http://client.beamdog.com/download/#{version}/osx_64/Beamdog%20Client-#{version}.dmg"
  name 'Beamdog Client'
  homepage 'https://beamdog.com/about/client'

  app 'Beamdog Client.app'
end
