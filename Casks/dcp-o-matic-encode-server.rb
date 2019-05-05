cask 'dcp-o-matic-encode-server' do
  version '2.14.1'
  sha256 '7ca09c032f46b8dbf910d8552c08bd5693fb03626cfddbd95f4b56eab73c11ee'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
