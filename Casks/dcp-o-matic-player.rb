cask 'dcp-o-matic-player' do
  version '2.12.9'
  sha256 '3edc777985cad02fabf251cafcfd2d3b95743f8728d3639055a7fbe82dc9464c'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
