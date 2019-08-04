cask 'data-science-studio' do
  version '5.1.5'
  sha256 '3d5f13c62b2d4d4d6ad1e814a7a7d763427ca4a32644563d1553443cdc2da07d'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
