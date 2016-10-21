cask 'pingplotter' do
  version :latest
  sha256 :no_check

  url 'http://www.pingplotter.com/downloads/pingplotter_osx.zip'
  name 'PingPlotter'
  homepage 'https://www.pingplotter.com/'

  app 'PingPlotter.app'
end
