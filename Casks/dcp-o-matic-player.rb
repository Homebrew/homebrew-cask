cask 'dcp-o-matic-player' do
  version '2.14.7'
  sha256 '5156bb8c5684f37ade8adf365250268ac4682151cbf9617574775eb559de72fc'

  url "https://dcpomatic.com/dl.php?id=osx-player&version=#{version}"
  appcast 'https://dcpomatic.com/download'
  name 'DCP-o-matic Player'
  homepage 'https://dcpomatic.com/'

  app "DCP-o-matic #{version.major} Player.app"
end
