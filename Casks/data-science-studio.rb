cask 'data-science-studio' do
  version '6.0.1'
  sha256 'dadd1acf7205a3ed1d8383d8ca758da8f31dcd656a044a15cea68e9aa8b7aeb0'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
