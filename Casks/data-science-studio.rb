cask 'data-science-studio' do
  version '5.1.7'
  sha256 'c78e0fc92cd5620f5edef41588e5d688d73feb8cf74a4530d6c9a2847187b292'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
