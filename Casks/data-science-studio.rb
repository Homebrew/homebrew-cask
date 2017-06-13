cask 'data-science-studio' do
  version '4.0.4'
  sha256 '51314180601497e1b132aa6a7be0835013fdffbf77883aba68ad6e2bd00f2bc9'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
