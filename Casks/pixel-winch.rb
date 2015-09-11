cask :v1 => 'pixel-winch' do
  version :latest
  sha256 :no_check

  url 'http://ricciadams.com/try/pixel-winch'
  name 'Pixel Winch'
  appcast 'http://www.ricciadams.com/downloads/winch/appcast_v2.xml',
          :sha256 => '1c960e7005304e4f21b87357836713ad8e92c5838ab8a478d95cfcb2cd8f2be1'
  homepage 'http://ricciadams.com/projects/pixel-winch'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pixel Winch.app'
end
