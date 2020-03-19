cask 'dcp-o-matic-encode-server' do
  version '2.14.32'
  sha256 '7e457019145d7f2fcede8d2a76f5c438a0f241e2b217fbec7b559b4ac48733f0'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
