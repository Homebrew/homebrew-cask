cask 'data-science-studio' do
  version '7.0.0'
  sha256 'a6d2b77205aaf5a3c572375bd7f6c7ae387107bf64f62d51a8e853e86d06cdb4'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
