cask :v1 => 'ps3-media-server' do
  version '1.90.1'
  sha256 '3ebe75ce0dbdc1313c10fb901f845564cc343dc3b7487f07e15db9d757850df5'

  url "https://downloads.sourceforge.net/project/ps3mediaserver/pms-#{version}-setup-macosx.tar.gz"
  homepage 'http://www.ps3mediaserver.org/'
  license :oss

  installer :manual => 'PS3 Media Server Setup.app'
end
