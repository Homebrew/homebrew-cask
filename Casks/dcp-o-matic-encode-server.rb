cask 'dcp-o-matic-encode-server' do
  version '2.12.8'
  sha256 '52568aac3b9d8988e8aa08da9b9c955b64bc4bc2daaeb8ba8a64063c2f52e765'

  url "https://dcpomatic.com/dl.php?id=osx-server&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Encode Server'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Encode Server.app"
end
