cask 'dcp-o-matic-player' do
  version '2.14.14'
  sha256 '0943d70a82cc8492f88f1098e8ff47b4ee09e1767b81648c54ab4ad9fdea1d51'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
