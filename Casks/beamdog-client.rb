cask 'beamdog-client' do
  version '2.1.9'
  sha256 'b3ee780be9c3e1d5eefb75c890531eca69d57a24b4b776a81e2cf3f2ecc4515a'

  url "http://client.beamdog.com/download/#{version}/osx_64/Beamdog%20Client-#{version}.dmg"
  name 'Beamdog Client'
  homepage 'https://www.beamdog.com/about/client'

  app 'Beamdog Client.app'

  zap trash: [
               '~/Library/Application Support/Beamdog Client',
               '~/Library/Caches/Beamdog.BeamdogClient',
               '~/Library/Caches/Beamdog.BeamdogClient.ShipIt',
               '~/Library/Preferences/Beamdog.BeamdogClient.helper.plist',
               '~/Library/Preferences/Beamdog.BeamdogClient.plist',
               '~/Library/Saved Application State/Beamdog.BeamdogClient.savedState',
             ]
end
