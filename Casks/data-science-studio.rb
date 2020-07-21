cask 'data-science-studio' do
  version '8.0.0'
  sha256 '4b0d76d7ca704d9b3e1f26cd189c35b1363ee48d5b74b360369acfaa3394f5fb'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
