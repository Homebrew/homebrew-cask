cask 'dcp-o-matic-player' do
  version '2.14.8'
  sha256 'e228cb99e358e1b4485c9befa54a84271d36c813f3610591a7f7c15b0be6aa68'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
