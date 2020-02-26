cask 'dcp-o-matic-encode-server' do
  version '2.14.30'
  sha256 '58f28ab999db70d745fbfa69d13b180f3a03ed3ebdfc7202cb28da12101a02d2'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
