cask 'dcp-o-matic-player' do
  version '2.14.32'
  sha256 '50056fd444d1d3e6d623530d207ea85f6de49ad4e3a6f15e38075e499c83e663'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
