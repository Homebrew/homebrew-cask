cask 'dcp-o-matic-player' do
  version '2.14.19'
  sha256 '2e8a912cdb354346581e85a131162284f6bc23f005e5fe0a6a17e0a9c75f2fca'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
