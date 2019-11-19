cask 'dcp-o-matic-player' do
  version '2.14.13'
  sha256 'c1ef0e1f85e478d943c2e93c50ae7334680545f4fcded8976f56b6cda980fd47'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
