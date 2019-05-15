cask 'dcp-o-matic' do
  version '2.14.2'
  sha256 '8e8de4636e557ff87f72a8ac638a76d630a4140e3d77a4c449e503383275fafa'

  url "https://dcpomatic.com/dl.php?id=osx-main&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major}.app"
end
