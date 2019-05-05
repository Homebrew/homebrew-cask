cask 'dcp-o-matic-player' do
  version '2.14.1'
  sha256 '72984bc44217b07b4fe2a65a564f65dd7a1836250ef1fff3bc55c811150c5513'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
