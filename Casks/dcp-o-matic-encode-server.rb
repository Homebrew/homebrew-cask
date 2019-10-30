cask 'dcp-o-matic-encode-server' do
  version '2.14.12'
  sha256 '80789a41db491535f280765ac459b8370f63759a80697e76c4a2bd671468806a'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
