cask 'dcp-o-matic-player' do
  version '2.14.26'
  sha256 '2d3da7a740198957ec1152c79609709b3fb6f30a92f596007c62478ea0f7b9e8'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
