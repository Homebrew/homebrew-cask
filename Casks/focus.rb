class Focus < Cask
  version :latest
  sha256 :no_check

  url 'http://www.heyfocus.com/releases/Focus-latest.zip'
  appcast 'http://www.heyfocus.com/appcast.xml'
  homepage 'http://www.heyfocus.com/'

  app 'Focus.app'
end
