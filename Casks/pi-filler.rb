cask 'pi-filler' do
  version '1.3'
  sha256 '06179b365be0f86027f89ab634e98f5101899ccfe5378f44b4b9330aedf0a9b3'

  url 'http://ivanx.com/raspberrypi/files/PiFiller.zip'
  name 'Pi Filler'
  homepage 'http://ivanx.com/raspberrypi'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pi Filler.app'
end
