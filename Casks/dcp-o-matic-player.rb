cask 'dcp-o-matic-player' do
  version '2.12.18'
  sha256 'efbf129d9a6141d1f858f2d6d2c7d1d6c9e73a7ff4b0385c752866ff074ebf24'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
