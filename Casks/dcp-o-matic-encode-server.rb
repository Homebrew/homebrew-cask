cask 'dcp-o-matic-encode-server' do
  version '2.14.2'
  sha256 '0d4e5c5d99625076a2f315a7f7074519010d5fac9d7a6b9f0f58da3a4b0a3e4b'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
