cask 'data-science-studio' do
  version '5.1.4'
  sha256 'd18a6aed1357a0620249fcface0f2fe85e4df522dc275bcfe230e7068602a269'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
