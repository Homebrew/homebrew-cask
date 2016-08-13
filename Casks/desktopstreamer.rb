cask 'desktopstreamer' do
  version :latest
  sha256 :no_check

  url 'http://www.elinasoft.com/Desktop_Streamer.dmg'
  name 'Desktop Streamer'
  homepage 'http://www.elinasoft.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DesktopStreamer.app'
end
