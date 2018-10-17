cask 'data-science-studio' do
  version '5.0.2'
  sha256 'f2cb17bbdd33af6a38f13d20ccb281da2c17041d1793d31a3ea0fafd6a0ff66e'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
