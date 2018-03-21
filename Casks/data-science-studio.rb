cask 'data-science-studio' do
  version '4.1.5'
  sha256 '134b6a9de28d94e85b7a494737a5be98b771de52e36cc10a1d226549a5f92fed'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
