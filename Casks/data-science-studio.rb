cask 'data-science-studio' do
  version '7.0.1'
  sha256 '108f530047a44e6f12207ee39207be4499e48e87de4e67de11cbd7cfaf2b4439'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
