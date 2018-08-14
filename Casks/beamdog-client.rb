cask 'beamdog-client' do
  version '2.1.8'
  sha256 'b5e23a1f505f839865ff7b2c05cfccd8e9b981cff49bb84899fbe2773734a067'

  url "http://client.beamdog.com/download/#{version}/osx_64/Beamdog%20Client-#{version}.dmg"
  name 'Beamdog Client'
  homepage 'https://beamdog.com/about/client'

  app 'Beamdog Client.app'
end
