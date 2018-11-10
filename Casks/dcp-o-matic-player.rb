cask 'dcp-o-matic-player' do
  version '2.13.68'
  sha256 '0bb5b4e92fc11c67e818f1ea66b203ee9392be1fe08a310c4166425815e90c8f'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
