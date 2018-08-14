cask 'data-science-studio' do
  version '4.3.1'
  sha256 'c541c73a33a3d7a30243b098cc268c43607227fe589675075017809b13ca5723'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
