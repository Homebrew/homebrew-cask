cask 'data-science-studio' do
  version '4.1.3'
  sha256 'aaaf786db2cdbf3a08eaeeaa69ad040b78add8205f0074475bf9271ab5bd4671'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
