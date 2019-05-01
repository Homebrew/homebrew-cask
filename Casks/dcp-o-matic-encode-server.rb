cask 'dcp-o-matic-encode-server' do
  version '2.14.0'
  sha256 '6a4625d87d6954e839e58b97e2d9e0bcde3e24c7e21e092925bc8cbff10fb337'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
