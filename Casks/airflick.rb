cask 'airflick' do
  version '0.51'
  sha256 'f84984a120211b8c34314de48b41feaacf119c7a222d90ffb9a7e5fd98ddeb76'

  url "http://ericasadun.com/ftp/AirPlay/AirFlick-#{version}.zip"
  name 'AirFlick'
  homepage 'http://ericasadun.com/ftp/AirPlay/'

  app 'AirFlick.app'
end
