cask 'data-science-studio' do
  version '3.1.2'
  sha256 'fad81f78a87ef4900f586079a5bb434c069a1fe05b5daea8a8b78fc7b1828488'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com'

  app 'DataScienceStudio.app'
end
