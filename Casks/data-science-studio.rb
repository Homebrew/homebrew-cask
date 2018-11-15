cask 'data-science-studio' do
  version '5.0.3'
  sha256 '4a8b2380412ef3cde845fd26cce32ef0c63b46a5b33b7d9fcf23ed0cd9bba0ae'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
