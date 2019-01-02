cask 'dcp-o-matic-player' do
  version '2.12.13'
  sha256 '09ce5062d6737ff56e0cc5957a21170af9bd2b437b124b5c898bca1b23eef27d'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
