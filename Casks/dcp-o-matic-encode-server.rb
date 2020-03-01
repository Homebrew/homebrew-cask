cask 'dcp-o-matic-encode-server' do
  version '2.14.31'
  sha256 'eb87ddd56db2e91f02d18ab21dbeb4ef4723f546c6bc8e03a3e6ecdb5647ab6b'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
