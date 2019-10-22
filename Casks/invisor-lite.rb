cask 'invisor-lite' do
  version '3.13'
  sha256 '06615b2b0c43f32fc3cc602a88f0d896de21190393de0b97b291f88507f7aaf1'

  url "https://www.invisorapp.com/download/InvisorLite-#{version}.dmg"
  appcast 'https://www.invisorapp.com/appcast_lite.xml'
  name 'Invisor Lite'
  homepage 'https://www.invisorapp.com/'

  app 'Invisor Lite.app'
end
