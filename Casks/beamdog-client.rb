cask 'beamdog-client' do
  version '2.1.10'
  sha256 '25ddbe6635057148e87b9e4d82d6751a635e0b34b72c87f3ab06001177e233fb'

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
