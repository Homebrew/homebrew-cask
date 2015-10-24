cask :v1 => 'flightgear' do
  version '3.4.0'
  sha256 '17ac1c274d0256a17229b5cd7c77a44cdaa521e555a474301754e72d17c735cb'

  # utwente.nl is the official download host per the vendor homepage
  url "http://ftp.snt.utwente.nl/pub/software/flightgear/ftp/MacOSX/FlightGear-#{version}.dmg"
  name 'FlightGear'
  homepage 'http://www.flightgear.org/'
  license :gpl

  app 'FlightGear.app'
end
