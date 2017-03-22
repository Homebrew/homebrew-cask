cask 'data-science-studio' do
  version '4.0.1'
  sha256 'f86b2e8973db54f1e79713a700fac83090e025ff21e8afb3ee56dfac9679ffc7'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
