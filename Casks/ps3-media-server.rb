cask :v1 => 'ps3-media-server' do
  version '1.90.1'
  sha256 '3ebe75ce0dbdc1313c10fb901f845564cc343dc3b7487f07e15db9d757850df5'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/ps3mediaserver/pms-#{version}-setup-macosx.tar.gz"
  name 'PS3 Media Server'
  homepage 'http://www.ps3mediaserver.org/'
  license :gpl

  installer :manual => 'PS3 Media Server Setup.app'
end
