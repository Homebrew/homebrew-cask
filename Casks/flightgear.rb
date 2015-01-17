cask :v1 => 'flightgear' do
  version '3.2.0'
  sha256 '1d2721c74e46869b3d13bc9c3d1f8e086f8771f23586c92ce156d0f3d076699b'

  # utwente.nl is the official download host per the vendor homepage
  url "http://ftp.snt.utwente.nl/pub/software/flightgear/ftp/MacOSX/FlightGear-#{version}.dmg"
  homepage 'http://www.flightgear.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FlightGear.app'
end
