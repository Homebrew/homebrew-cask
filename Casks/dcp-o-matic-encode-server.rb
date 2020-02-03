cask 'dcp-o-matic-encode-server' do
  version '2.14.25'
  sha256 '477518def6f4a767a8e3ed68eba5ceee96aed573039e65bcd3dd34e7fa9188be'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
