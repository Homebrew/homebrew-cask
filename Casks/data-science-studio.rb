cask 'data-science-studio' do
  version '4.2.3'
  sha256 '8e3b012930e620d3a2a25fa6eb29e3ec7a621f91167316e6e2c24c8d9b960297'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
