cask 'dcp-o-matic-player' do
  version '2.14.30'
  sha256 '044c25f72ed1035bfd84f84fd3f0e2588ef44c92600086db11bf3cc0fea8a762'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
