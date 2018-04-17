cask 'data-science-studio' do
  version '4.2.0'
  sha256 '14c60f03f512b8681c6a018cfe035d19377f06230297376ce6da40b41e8b85ab'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
