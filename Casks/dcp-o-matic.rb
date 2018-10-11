cask 'dcp-o-matic' do
  version '2.12.12'
  sha256 'c3598b144de9be209333983325d7126e63f17b61211a67d86953ea2d4e714cb9'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
