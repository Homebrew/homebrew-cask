cask 'dcp-o-matic-player' do
  version '2.14.33'
  sha256 '4e824c415f379ff7752a81f92e00271bd785ab7b80359451c861654badd5827e'

  url "https://dcpomatic.com/dl.php?id=osx-10.9-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
