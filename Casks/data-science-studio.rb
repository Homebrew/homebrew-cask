cask 'data-science-studio' do
  version '4.1.0'
  sha256 'c5b8ea80de8cb4b8a20fe1d3bf81b9800e060ca9f97dfdbc020b67d097b2cef3'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
