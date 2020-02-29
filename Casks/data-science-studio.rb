cask 'data-science-studio' do
  version '6.0.4'
  sha256 '75d7758fc49cb8ac1043072bbb7b181cf43fbe4acfe13835526e6827bae697d8'

  url "https://downloads.dataiku.com/public/studio/#{version}/Data%20Science%20Studio%20#{version}.dmg"
  appcast 'https://www.dataiku.com/dss/trynow/mac/'
  name 'Dataiku Data Science Studio'
  homepage 'https://www.dataiku.com/'

  app 'DataScienceStudio.app'
end
