cask 'data-science-studio' do
  version '7.0.2'
  sha256 '06b0e527940ac22f0cca89eb5c0f10ff7b0b8105e44007a0ec929268cf92471c'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
