cask 'dcp-o-matic-player' do
  version '2.12.19'
  sha256 '803c7fd1a4cac64ce265ceb65908679f7c540fbd4c3cac6f4edef54577b9ae2d'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
