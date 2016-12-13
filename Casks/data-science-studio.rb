cask 'data-science-studio' do
  version '3.1.5'
  sha256 '7148eebfbd2dd92556da603b4c600a365548df9b2cc18eb02d2def0c7675da7d'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
