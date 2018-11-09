cask 'scenery' do
  version :latest
  sha256 :no_check

  url 'https://www.getscenery.com/download_zip'
  appcast 'https://rink.hockeyapp.net/api/2/apps/5084baf9f66768b3ce01151cf8645b59'
  name 'Scenery'
  homepage 'https://www.getscenery.com/'

  app 'Scenery.app'
end
