cask 'data-science-studio' do
  version '2.2.2'
  sha256 '4644cf19ba15acfadedfed1f005d9ac9a8970a829e4fdb0c8b7f7246f69ddaef'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com'
  license :gratis

  app 'DataScienceStudio.app'
end
