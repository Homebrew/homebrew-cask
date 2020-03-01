cask 'dcp-o-matic-player' do
  version '2.14.31'
  sha256 '3756f19ccdc1454f8b46a975037c751b9615258d3eea8f72f45b5ab742fa4dc8'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
